.class public final Lcom/google/android/gms/internal/cast/m1;
.super Lcom/google/android/gms/internal/cast/i2;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/cast/m1;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/internal/cast/n2;

.field private zzg:Lcom/google/android/gms/internal/cast/n2;

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/m1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/m1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/m1;->zzb:Lcom/google/android/gms/internal/cast/m1;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/cast/m1;

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
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/m1;->zze:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/cast/K2;->J:Lcom/google/android/gms/internal/cast/K2;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/m1;->zzf:Lcom/google/android/gms/internal/cast/n2;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/m1;->zzg:Lcom/google/android/gms/internal/cast/n2;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic l()Lcom/google/android/gms/internal/cast/m1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/m1;->zzb:Lcom/google/android/gms/internal/cast/m1;

    return-object v0
.end method


# virtual methods
.method public final h(ILcom/google/android/gms/internal/cast/i2;)Ljava/lang/Object;
    .locals 6

    .line 1
    const/4 p2, 0x1

    .line 2
    const/4 v0, 0x7

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
    sget-object p1, Lcom/google/android/gms/internal/cast/m1;->zzb:Lcom/google/android/gms/internal/cast/m1;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/cast/d1;

    .line 25
    .line 26
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/cast/d1;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/cast/m1;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/cast/m1;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v0, "zzd"

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    aput-object v0, p1, v5

    .line 42
    .line 43
    const-string v0, "zze"

    .line 44
    .line 45
    aput-object v0, p1, p2

    .line 46
    .line 47
    const-string p2, "zzf"

    .line 48
    .line 49
    aput-object p2, p1, v4

    .line 50
    .line 51
    const-class p2, Lcom/google/android/gms/internal/cast/R0;

    .line 52
    .line 53
    aput-object p2, p1, v3

    .line 54
    .line 55
    const-string p2, "zzg"

    .line 56
    .line 57
    aput-object p2, p1, v2

    .line 58
    .line 59
    const-class p2, Lcom/google/android/gms/internal/cast/K0;

    .line 60
    .line 61
    aput-object p2, p1, v1

    .line 62
    .line 63
    const-string p2, "zzh"

    .line 64
    .line 65
    const/4 v0, 0x6

    .line 66
    aput-object p2, p1, v0

    .line 67
    .line 68
    sget-object p2, Lcom/google/android/gms/internal/cast/m1;->zzb:Lcom/google/android/gms/internal/cast/m1;

    .line 69
    .line 70
    new-instance v0, Lcom/google/android/gms/internal/cast/L2;

    .line 71
    .line 72
    const-string v1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001"

    .line 73
    .line 74
    invoke-direct {v0, p2, v1, p1}, Lcom/google/android/gms/internal/cast/L2;-><init>(Lcom/google/android/gms/internal/cast/i2;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1
.end method
