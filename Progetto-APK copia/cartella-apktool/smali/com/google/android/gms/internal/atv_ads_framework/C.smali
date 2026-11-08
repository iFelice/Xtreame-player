.class public abstract Lcom/google/android/gms/internal/atv_ads_framework/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/atv_ads_framework/r;

.field public static final b:Lcom/google/android/gms/internal/atv_ads_framework/r;

.field public static final c:Lcom/google/android/gms/internal/atv_ads_framework/z;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x4

    .line 6
    new-array v5, v4, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string v6, "http"

    .line 9
    .line 10
    aput-object v6, v5, v3

    .line 11
    .line 12
    const-string v6, "https"

    .line 13
    .line 14
    aput-object v6, v5, v2

    .line 15
    .line 16
    const-string v6, "mailto"

    .line 17
    .line 18
    aput-object v6, v5, v1

    .line 19
    .line 20
    const-string v6, "ftp"

    .line 21
    .line 22
    aput-object v6, v5, v0

    .line 23
    .line 24
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/atv_ads_framework/r;->s(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/atv_ads_framework/r;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    sput-object v5, Lcom/google/android/gms/internal/atv_ads_framework/C;->a:Lcom/google/android/gms/internal/atv_ads_framework/r;

    .line 29
    .line 30
    const-string v25, "video/mp4"

    .line 31
    .line 32
    const-string v26, "video/ogg"

    .line 33
    .line 34
    const-string v6, "audio/mpeg"

    .line 35
    .line 36
    const-string v7, "audio/oga"

    .line 37
    .line 38
    const-string v8, "audio/ogg"

    .line 39
    .line 40
    const-string v9, "audio/opus"

    .line 41
    .line 42
    const-string v10, "audio/x-m4a"

    .line 43
    .line 44
    const-string v11, "audio/x-matroska"

    .line 45
    .line 46
    const-string v12, "audio/x-wav"

    .line 47
    .line 48
    const-string v13, "audio/wav"

    .line 49
    .line 50
    const-string v14, "audio/webm"

    .line 51
    .line 52
    const-string v15, "image/bmp"

    .line 53
    .line 54
    const-string v16, "image/gif"

    .line 55
    .line 56
    const-string v17, "image/jpeg"

    .line 57
    .line 58
    const-string v18, "image/jpg"

    .line 59
    .line 60
    const-string v19, "image/png"

    .line 61
    .line 62
    const-string v20, "image/svg+xml"

    .line 63
    .line 64
    const-string v21, "image/tiff"

    .line 65
    .line 66
    const-string v22, "image/webp"

    .line 67
    .line 68
    const-string v23, "image/x-icon"

    .line 69
    .line 70
    const-string v24, "video/mpeg"

    .line 71
    .line 72
    const-string v27, "video/webm"

    .line 73
    .line 74
    const-string v28, "video/x-matroska"

    .line 75
    .line 76
    filled-new-array/range {v6 .. v28}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    const/16 v6, 0x1d

    .line 81
    .line 82
    new-array v7, v6, [Ljava/lang/Object;

    .line 83
    .line 84
    const-string v8, "audio/3gpp2"

    .line 85
    .line 86
    aput-object v8, v7, v3

    .line 87
    .line 88
    const-string v8, "audio/3gpp"

    .line 89
    .line 90
    aput-object v8, v7, v2

    .line 91
    .line 92
    const-string v2, "audio/aac"

    .line 93
    .line 94
    aput-object v2, v7, v1

    .line 95
    .line 96
    const-string v1, "audio/midi"

    .line 97
    .line 98
    aput-object v1, v7, v0

    .line 99
    .line 100
    const-string v0, "audio/mp3"

    .line 101
    .line 102
    aput-object v0, v7, v4

    .line 103
    .line 104
    const/4 v0, 0x5

    .line 105
    const-string v1, "audio/mp4"

    .line 106
    .line 107
    aput-object v1, v7, v0

    .line 108
    .line 109
    const/4 v0, 0x6

    .line 110
    const/16 v1, 0x17

    .line 111
    .line 112
    invoke-static {v5, v3, v7, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    .line 114
    .line 115
    invoke-static {v6, v7}, Lcom/google/android/gms/internal/atv_ads_framework/r;->s(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/atv_ads_framework/r;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Lcom/google/android/gms/internal/atv_ads_framework/C;->b:Lcom/google/android/gms/internal/atv_ads_framework/r;

    .line 120
    .line 121
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/z;->O:Lcom/google/android/gms/internal/atv_ads_framework/z;

    .line 122
    .line 123
    sput-object v0, Lcom/google/android/gms/internal/atv_ads_framework/C;->c:Lcom/google/android/gms/internal/atv_ads_framework/z;

    .line 124
    .line 125
    return-void
.end method
