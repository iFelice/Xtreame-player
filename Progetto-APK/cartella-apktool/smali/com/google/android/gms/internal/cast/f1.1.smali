.class public final Lcom/google/android/gms/internal/cast/f1;
.super Lcom/google/android/gms/internal/cast/i2;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/f1;


# instance fields
.field private zzd:I

.field private zze:Z

.field private zzf:Z

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private zzj:I

.field private zzk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/f1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/f1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/f1;->zzb:Lcom/google/android/gms/internal/cast/f1;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/f1;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/i2;->e(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/i2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/i2;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/f1;->zzh:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/f1;->zzk:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic l()Lcom/google/android/gms/internal/cast/f1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/f1;->zzb:Lcom/google/android/gms/internal/cast/f1;

    return-object v0
.end method


# virtual methods
.method public final h(ILcom/google/android/gms/internal/cast/i2;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 p2, 0x5

    .line 2
    const/4 v0, 0x4

    .line 3
    const/4 v1, 0x3

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    if-eq p1, v2, :cond_3

    .line 11
    .line 12
    if-eq p1, v1, :cond_2

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    if-eq p1, p2, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/cast/f1;->zzb:Lcom/google/android/gms/internal/cast/f1;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/d1;

    .line 24
    .line 25
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/cast/d1;-><init>(I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/f1;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/f1;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    const/16 p1, 0x8

    .line 36
    .line 37
    new-array p1, p1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v4, "zzd"

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    aput-object v4, p1, v5

    .line 43
    .line 44
    const-string v4, "zze"

    .line 45
    .line 46
    aput-object v4, p1, v3

    .line 47
    .line 48
    const-string v3, "zzf"

    .line 49
    .line 50
    aput-object v3, p1, v2

    .line 51
    .line 52
    const-string v2, "zzg"

    .line 53
    .line 54
    aput-object v2, p1, v1

    .line 55
    .line 56
    const-string v1, "zzh"

    .line 57
    .line 58
    aput-object v1, p1, v0

    .line 59
    .line 60
    const-string v0, "zzi"

    .line 61
    .line 62
    aput-object v0, p1, p2

    .line 63
    .line 64
    const-string p2, "zzj"

    .line 65
    .line 66
    const/4 v0, 0x6

    .line 67
    aput-object p2, p1, v0

    .line 68
    .line 69
    const-string p2, "zzk"

    .line 70
    .line 71
    const/4 v0, 0x7

    .line 72
    aput-object p2, p1, v0

    .line 73
    .line 74
    sget-object p2, Lcom/google/android/gms/internal/cast/f1;->zzb:Lcom/google/android/gms/internal/cast/f1;

    .line 75
    .line 76
    new-instance v0, Lcom/google/android/gms/internal/cast/L2;

    .line 77
    .line 78
    const-string v1, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1007\u0000\u0002\u1007\u0001\u0003\u1004\u0002\u0004\u1008\u0003\u0005\u1004\u0004\u0006\u1004\u0005\u0007\u1008\u0006"

    .line 79
    .line 80
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/cast/L2;-><init>(Lcom/google/android/gms/internal/cast/i2;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :cond_4
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method
