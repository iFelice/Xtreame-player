.class public final Lcom/google/android/gms/internal/cast/W;
.super Lcom/google/android/gms/internal/cast/i2;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/W;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/cast/V;

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/W;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/i2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/W;->zzb:Lcom/google/android/gms/internal/cast/W;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/W;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/cast/i2;->e(Ljava/lang/Class;Lcom/google/android/gms/internal/cast/i2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic l()Lcom/google/android/gms/internal/cast/W;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/W;->zzb:Lcom/google/android/gms/internal/cast/W;

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
    sget-object p1, Lcom/google/android/gms/internal/cast/W;->zzb:Lcom/google/android/gms/internal/cast/W;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/U;

    .line 24
    .line 25
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/cast/U;-><init>(I)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/W;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/i2;-><init>()V

    .line 32
    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    const/16 p1, 0x9

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
    sget-object v2, Lcom/google/android/gms/internal/cast/y;->P:Lcom/google/android/gms/internal/cast/y;

    .line 53
    .line 54
    aput-object v2, p1, v1

    .line 55
    .line 56
    const-string v1, "zzg"

    .line 57
    .line 58
    aput-object v1, p1, v0

    .line 59
    .line 60
    const-string v0, "zzh"

    .line 61
    .line 62
    aput-object v0, p1, p2

    .line 63
    .line 64
    const-string p2, "zzi"

    .line 65
    .line 66
    const/4 v0, 0x6

    .line 67
    aput-object p2, p1, v0

    .line 68
    .line 69
    const-string p2, "zzj"

    .line 70
    .line 71
    const/4 v0, 0x7

    .line 72
    aput-object p2, p1, v0

    .line 73
    .line 74
    sget-object p2, Lcom/google/android/gms/internal/cast/y;->O:Lcom/google/android/gms/internal/cast/y;

    .line 75
    .line 76
    const/16 v0, 0x8

    .line 77
    .line 78
    aput-object p2, p1, v0

    .line 79
    .line 80
    sget-object p2, Lcom/google/android/gms/internal/cast/W;->zzb:Lcom/google/android/gms/internal/cast/W;

    .line 81
    .line 82
    new-instance v0, Lcom/google/android/gms/internal/cast/L2;

    .line 83
    .line 84
    const-string v1, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u180c\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1009\u0004\u0006\u180c\u0005"

    .line 85
    .line 86
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/cast/L2;-><init>(Lcom/google/android/gms/internal/cast/i2;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_4
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1
.end method
