.class public final Lcom/google/android/gms/internal/cast/V;
.super Lcom/google/android/gms/internal/cast/i2;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/V;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/V;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/i2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/V;->zzb:Lcom/google/android/gms/internal/cast/V;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/V;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/i2;->e(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/i2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic l()Lcom/google/android/gms/internal/cast/V;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/V;->zzb:Lcom/google/android/gms/internal/cast/V;

    return-object v0
.end method


# virtual methods
.method public final h(ILcom/google/android/gms/internal/cast/i2;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x5

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    if-eq p1, v4, :cond_3

    .line 12
    .line 13
    if-eq p1, v3, :cond_2

    .line 14
    .line 15
    if-eq p1, v2, :cond_1

    .line 16
    .line 17
    if-eq p1, v1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/cast/V;->zzb:Lcom/google/android/gms/internal/cast/V;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/U;

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/U;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/V;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/i2;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    const/16 p1, 0x13

    .line 37
    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v5, "zzd"

    .line 41
    .line 42
    aput-object v5, p1, v0

    .line 43
    .line 44
    const-string v0, "zze"

    .line 45
    .line 46
    aput-object v0, p1, p2

    .line 47
    .line 48
    const-string p2, "zzf"

    .line 49
    .line 50
    aput-object p2, p1, v4

    .line 51
    .line 52
    const-string p2, "zzg"

    .line 53
    .line 54
    aput-object p2, p1, v3

    .line 55
    .line 56
    sget-object p2, Lcom/google/android/gms/internal/cast/y;->K:Lcom/google/android/gms/internal/cast/y;

    .line 57
    .line 58
    aput-object p2, p1, v2

    .line 59
    .line 60
    const-string p2, "zzh"

    .line 61
    .line 62
    aput-object p2, p1, v1

    .line 63
    .line 64
    sget-object p2, Lcom/google/android/gms/internal/cast/y;->L:Lcom/google/android/gms/internal/cast/y;

    .line 65
    .line 66
    const/4 v0, 0x6

    .line 67
    aput-object p2, p1, v0

    .line 68
    .line 69
    const-string p2, "zzi"

    .line 70
    .line 71
    const/4 v0, 0x7

    .line 72
    aput-object p2, p1, v0

    .line 73
    .line 74
    sget-object p2, Lcom/google/android/gms/internal/cast/y;->J:Lcom/google/android/gms/internal/cast/y;

    .line 75
    .line 76
    const/16 v0, 0x8

    .line 77
    .line 78
    aput-object p2, p1, v0

    .line 79
    .line 80
    const-string p2, "zzj"

    .line 81
    .line 82
    const/16 v0, 0x9

    .line 83
    .line 84
    aput-object p2, p1, v0

    .line 85
    .line 86
    sget-object p2, Lcom/google/android/gms/internal/cast/y;->M:Lcom/google/android/gms/internal/cast/y;

    .line 87
    .line 88
    const/16 v0, 0xa

    .line 89
    .line 90
    aput-object p2, p1, v0

    .line 91
    .line 92
    const-string p2, "zzk"

    .line 93
    .line 94
    const/16 v0, 0xb

    .line 95
    .line 96
    aput-object p2, p1, v0

    .line 97
    .line 98
    sget-object p2, Lcom/google/android/gms/internal/cast/y;->N:Lcom/google/android/gms/internal/cast/y;

    .line 99
    .line 100
    const/16 v0, 0xc

    .line 101
    .line 102
    aput-object p2, p1, v0

    .line 103
    .line 104
    const-string p2, "zzl"

    .line 105
    .line 106
    const/16 v0, 0xd

    .line 107
    .line 108
    aput-object p2, p1, v0

    .line 109
    .line 110
    sget-object p2, Lcom/google/android/gms/internal/cast/y;->I:Lcom/google/android/gms/internal/cast/y;

    .line 111
    .line 112
    const/16 v0, 0xe

    .line 113
    .line 114
    aput-object p2, p1, v0

    .line 115
    .line 116
    const-string p2, "zzm"

    .line 117
    .line 118
    const/16 v0, 0xf

    .line 119
    .line 120
    aput-object p2, p1, v0

    .line 121
    .line 122
    const-string p2, "zzn"

    .line 123
    .line 124
    const/16 v0, 0x10

    .line 125
    .line 126
    aput-object p2, p1, v0

    .line 127
    .line 128
    const-string p2, "zzo"

    .line 129
    .line 130
    const/16 v0, 0x11

    .line 131
    .line 132
    aput-object p2, p1, v0

    .line 133
    .line 134
    const-string p2, "zzp"

    .line 135
    .line 136
    const/16 v0, 0x12

    .line 137
    .line 138
    aput-object p2, p1, v0

    .line 139
    .line 140
    sget-object p2, Lcom/google/android/gms/internal/cast/V;->zzb:Lcom/google/android/gms/internal/cast/V;

    .line 141
    .line 142
    new-instance v0, Lcom/google/android/gms/internal/cast/L2;

    .line 143
    .line 144
    const-string v1, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u180c\u0004\u0006\u180c\u0005\u0007\u180c\u0006\u0008\u180c\u0007\t\u1004\u0008\n\u1004\t\u000b\u1004\n\u000c\u1007\u000b"

    .line 145
    .line 146
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/cast/L2;-><init>(Lcom/google/android/gms/internal/cast/i2;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    return-object p1
.end method
