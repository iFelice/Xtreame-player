.class public final Lcom/google/android/gms/internal/cast/F0;
.super Lcom/google/android/gms/internal/cast/i2;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/F0;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:J

.field private zzh:Lcom/google/android/gms/internal/cast/n2;

.field private zzi:I

.field private zzj:Z

.field private zzk:Ljava/lang/String;

.field private zzl:J

.field private zzm:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/F0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/F0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/F0;->zzb:Lcom/google/android/gms/internal/cast/F0;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/F0;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/i2;->e(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/i2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/i2;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/F0;->zze:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/cast/K2;->J:Lcom/google/android/gms/internal/cast/K2;

    .line 9
    .line 10
    iput-object v1, p0, Lcom/google/android/gms/internal/cast/F0;->zzh:Lcom/google/android/gms/internal/cast/n2;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/F0;->zzk:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic l()Lcom/google/android/gms/internal/cast/F0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/F0;->zzb:Lcom/google/android/gms/internal/cast/F0;

    return-object v0
.end method


# virtual methods
.method public final h(ILcom/google/android/gms/internal/cast/i2;)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x3

    .line 8
    const/4 v5, 0x2

    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    if-eqz p1, :cond_4

    .line 12
    .line 13
    if-eq p1, v5, :cond_3

    .line 14
    .line 15
    if-eq p1, v4, :cond_2

    .line 16
    .line 17
    if-eq p1, v3, :cond_1

    .line 18
    .line 19
    if-eq p1, v2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    return-object p1

    .line 23
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/cast/F0;->zzb:Lcom/google/android/gms/internal/cast/F0;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/U;

    .line 27
    .line 28
    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/cast/U;-><init>(II)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/F0;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/F0;-><init>()V

    .line 35
    .line 36
    .line 37
    return-object p1

    .line 38
    :cond_3
    const/16 p1, 0xb

    .line 39
    .line 40
    new-array p1, p1, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string v6, "zzd"

    .line 43
    .line 44
    aput-object v6, p1, v0

    .line 45
    .line 46
    const-string v0, "zze"

    .line 47
    .line 48
    aput-object v0, p1, p2

    .line 49
    .line 50
    const-string p2, "zzf"

    .line 51
    .line 52
    aput-object p2, p1, v5

    .line 53
    .line 54
    const-string p2, "zzg"

    .line 55
    .line 56
    aput-object p2, p1, v4

    .line 57
    .line 58
    const-string p2, "zzh"

    .line 59
    .line 60
    aput-object p2, p1, v3

    .line 61
    .line 62
    const-class p2, Lcom/google/android/gms/internal/cast/E0;

    .line 63
    .line 64
    aput-object p2, p1, v2

    .line 65
    .line 66
    const-string p2, "zzi"

    .line 67
    .line 68
    const/4 v0, 0x6

    .line 69
    aput-object p2, p1, v0

    .line 70
    .line 71
    const-string p2, "zzj"

    .line 72
    .line 73
    const/4 v0, 0x7

    .line 74
    aput-object p2, p1, v0

    .line 75
    .line 76
    const-string p2, "zzk"

    .line 77
    .line 78
    const/16 v0, 0x8

    .line 79
    .line 80
    aput-object p2, p1, v0

    .line 81
    .line 82
    const-string p2, "zzl"

    .line 83
    .line 84
    aput-object p2, p1, v1

    .line 85
    .line 86
    const-string p2, "zzm"

    .line 87
    .line 88
    const/16 v0, 0xa

    .line 89
    .line 90
    aput-object p2, p1, v0

    .line 91
    .line 92
    sget-object p2, Lcom/google/android/gms/internal/cast/F0;->zzb:Lcom/google/android/gms/internal/cast/F0;

    .line 93
    .line 94
    new-instance v0, Lcom/google/android/gms/internal/cast/L2;

    .line 95
    .line 96
    const-string v1, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u001b\u0005\u1004\u0003\u0006\u1007\u0004\u0007\u1008\u0005\u0008\u1002\u0006\t\u1002\u0007"

    .line 97
    .line 98
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/cast/L2;-><init>(Lcom/google/android/gms/internal/cast/i2;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    return-object p1
.end method
