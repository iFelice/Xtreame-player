.class public final Lcom/google/android/gms/internal/pal/E0;
.super Lcom/google/android/gms/internal/pal/D;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/pal/E0;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:I

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/pal/H;

.field private zzj:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/E0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/E0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/pal/E0;->zzb:Lcom/google/android/gms/internal/pal/E0;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/pal/E0;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/pal/D;->f(Ljava/lang/Class;Lcom/google/android/gms/internal/pal/D;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/pal/D;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/pal/F;->J:Lcom/google/android/gms/internal/pal/F;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/E0;->zzi:Lcom/google/android/gms/internal/pal/H;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic m()Lcom/google/android/gms/internal/pal/E0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/E0;->zzb:Lcom/google/android/gms/internal/pal/E0;

    return-object v0
.end method


# virtual methods
.method public final l(I)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x5

    .line 4
    const/4 v3, 0x4

    .line 5
    const/4 v4, 0x3

    .line 6
    const/4 v5, 0x2

    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    if-eqz p1, :cond_4

    .line 10
    .line 11
    if-eq p1, v5, :cond_3

    .line 12
    .line 13
    if-eq p1, v4, :cond_2

    .line 14
    .line 15
    if-eq p1, v3, :cond_1

    .line 16
    .line 17
    if-eq p1, v2, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return-object p1

    .line 21
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/pal/E0;->zzb:Lcom/google/android/gms/internal/pal/E0;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/pal/y0;

    .line 25
    .line 26
    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/pal/y0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/pal/E0;

    .line 31
    .line 32
    invoke-direct {p1}, Lcom/google/android/gms/internal/pal/E0;-><init>()V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_3
    const/4 p1, 0x6

    .line 37
    new-array p1, p1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v6, "zze"

    .line 40
    .line 41
    aput-object v6, p1, v1

    .line 42
    .line 43
    const-string v1, "zzf"

    .line 44
    .line 45
    aput-object v1, p1, v0

    .line 46
    .line 47
    const-string v0, "zzg"

    .line 48
    .line 49
    aput-object v0, p1, v5

    .line 50
    .line 51
    const-string v0, "zzh"

    .line 52
    .line 53
    aput-object v0, p1, v4

    .line 54
    .line 55
    const-string v0, "zzi"

    .line 56
    .line 57
    aput-object v0, p1, v3

    .line 58
    .line 59
    const-string v0, "zzj"

    .line 60
    .line 61
    aput-object v0, p1, v2

    .line 62
    .line 63
    sget-object v0, Lcom/google/android/gms/internal/pal/E0;->zzb:Lcom/google/android/gms/internal/pal/E0;

    .line 64
    .line 65
    new-instance v1, Lcom/google/android/gms/internal/pal/j0;

    .line 66
    .line 67
    const-string v2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u1004\u0001\u0003\u1007\u0002\u0004\u0016\u0005\u1003\u0003"

    .line 68
    .line 69
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/pal/j0;-><init>(Lcom/google/android/gms/internal/pal/D;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method
