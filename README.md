# Discord Music Bot

Bot Discord yang bisa muter lagu dari YouTube langsung di voice channel.

---

## Cara Jalanin di GitHub Codespaces

### Step 1 — Buat Discord Bot

1. Buka [Discord Developer Portal](https://discord.com/developers/applications)
2. Klik **New Application** → kasih nama → **Create**
3. Pergi ke tab **Bot** → klik **Add Bot** → **Yes, do it!**
4. Di bagian **Privileged Gateway Intents**, aktifkan:
   - ✅ **SERVER MEMBERS INTENT**
   - ✅ **MESSAGE CONTENT INTENT**
5. Klik **Save Changes**
6. Klik **Reset Token** → **Copy** token-nya (simpan, jangan share!)

### Step 2 — Invite Bot ke Server

1. Masih di Developer Portal → tab **OAuth2** → **URL Generator**
2. Centang scope: `bot`
3. Centang permissions:
   - ✅ Read Messages / View Channels
   - ✅ Send Messages
   - ✅ Connect
   - ✅ Speak
   - ✅ Use Voice Activity
4. Copy URL yang muncul di bawah → buka di browser → pilih server kamu

### Step 3 — Jalanin di GitHub Codespaces

1. Push folder ini ke GitHub repo kamu
2. Buka repo → klik **Code** → **Codespaces** → **Create codespace on main**
3. Tunggu sampai setup selesai (npm install otomatis)
4. Di terminal Codespaces, buat file `.env`:
   ```bash
   cp .env.example .env
   ```
5. Buka file `.env` dan isi token:
   ```
   DISCORD_TOKEN=paste_token_kamu_disini
   ```
6. Jalankan bot:
   ```bash
   npm start
   ```
7. Kalau muncul `✅ Bot online sebagai NamaBot#1234` → bot udah jalan! 🎉

---

## Daftar Command

| Command | Shortcut | Fungsi |
|---|---|---|
| `!play <lagu/url>` | `!p` | Putar lagu (nama atau link YouTube) |
| `!skip` | `!s` | Skip lagu sekarang |
| `!pause` | — | Pause musik |
| `!resume` | `!r` | Lanjutkan musik |
| `!stop` | — | Stop & bot keluar VC |
| `!loop` | `!l` | Toggle loop lagu ini |
| `!queue` | `!q` | Lihat antrian |
| `!nowplaying` | `!np` | Lihat lagu yang diputar |
| `!help` | `!h` | Daftar command |

### Contoh penggunaan:
```
!play lofi hip hop
!play https://www.youtube.com/watch?v=xxxxx
!p never gonna give you up
```

---

## 📁 Struktur Project

```
discord-music-bot/
├── .devcontainer/
│   └── devcontainer.json   ← Konfigurasi Codespaces
├── src/
│   └── index.js            ← Kode utama bot
├── .env.example            ← Template environment variable
├── .gitignore
└── package.json
```

---

## ⚠️ Catatan

- Bot ini menggunakan `play-dl` untuk stream audio dari YouTube
- Streaming YouTube melanggar ToS YouTube, gunakan untuk server private
- Kalau bot tidak bisa didengar, pastikan **Deafen** bot di-disable di server settings
