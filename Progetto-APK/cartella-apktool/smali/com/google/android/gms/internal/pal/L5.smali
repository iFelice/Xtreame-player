.class public final Lcom/google/android/gms/internal/pal/L5;
.super Lcom/google/android/gms/internal/pal/D;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/pal/L5;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/pal/G5;

.field private zzg:Lcom/google/android/gms/internal/pal/r;

.field private zzh:Lcom/google/android/gms/internal/pal/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/L5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/L5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/pal/L5;->zzb:Lcom/google/android/gms/internal/pal/L5;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/pal/L5;

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
    sget-object v0, Lcom/google/android/gms/internal/pal/r;->H:Lcom/google/android/gms/internal/pal/q;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/L5;->zzg:Lcom/google/android/gms/internal/pal/r;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/L5;->zzh:Lcom/google/android/gms/internal/pal/r;

    .line 9
    .line 10
    return-void
.end method

.method public static o()Lcom/google/android/gms/internal/pal/K5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/L5;->zzb:Lcom/google/android/gms/internal/pal/L5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/D;->h()Lcom/google/android/gms/internal/pal/C;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/pal/K5;

    .line 8
    .line 9
    return-object v0
.end method

.method public static p()Lcom/google/android/gms/internal/pal/L5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/L5;->zzb:Lcom/google/android/gms/internal/pal/L5;

    return-object v0
.end method

.method public static q(Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/L5;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/L5;->zzb:Lcom/google/android/gms/internal/pal/L5;

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/pal/D;->j(Lcom/google/android/gms/internal/pal/D;Lcom/google/android/gms/internal/pal/r;Lcom/google/android/gms/internal/pal/x;)Lcom/google/android/gms/internal/pal/D;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/gms/internal/pal/L5;

    .line 8
    .line 9
    return-object p0
.end method

.method public static synthetic t(Lcom/google/android/gms/internal/pal/L5;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/pal/L5;->zze:I

    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u(Lcom/google/android/gms/internal/pal/L5;Lcom/google/android/gms/internal/pal/G5;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/L5;->zzf:Lcom/google/android/gms/internal/pal/G5;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic v(Lcom/google/android/gms/internal/pal/L5;Lcom/google/android/gms/internal/pal/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/L5;->zzg:Lcom/google/android/gms/internal/pal/r;

    .line 2
    .line 3
    return-void
.end method

.method public static synthetic w(Lcom/google/android/gms/internal/pal/L5;Lcom/google/android/gms/internal/pal/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/L5;->zzh:Lcom/google/android/gms/internal/pal/r;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final l(I)Ljava/lang/Object;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    add-int/lit8 p1, p1, -0x1

    .line 6
    .line 7
    if-eqz p1, :cond_4

    .line 8
    .line 9
    if-eq p1, v3, :cond_3

    .line 10
    .line 11
    if-eq p1, v2, :cond_2

    .line 12
    .line 13
    if-eq p1, v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/pal/L5;->zzb:Lcom/google/android/gms/internal/pal/L5;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/pal/K5;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/pal/L5;->zzb:Lcom/google/android/gms/internal/pal/L5;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/pal/C;-><init>(Lcom/google/android/gms/internal/pal/D;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/pal/L5;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/pal/L5;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v1, "zze"

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    aput-object v1, p1, v4

    .line 43
    .line 44
    const-string v1, "zzf"

    .line 45
    .line 46
    aput-object v1, p1, v0

    .line 47
    .line 48
    const-string v0, "zzg"

    .line 49
    .line 50
    aput-object v0, p1, v3

    .line 51
    .line 52
    const-string v0, "zzh"

    .line 53
    .line 54
    aput-object v0, p1, v2

    .line 55
    .line 56
    sget-object v0, Lcom/google/android/gms/internal/pal/L5;->zzb:Lcom/google/android/gms/internal/pal/L5;

    .line 57
    .line 58
    new-instance v1, Lcom/google/android/gms/internal/pal/j0;

    .line 59
    .line 60
    const-string v2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n"

    .line 61
    .line 62
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/pal/j0;-><init>(Lcom/google/android/gms/internal/pal/D;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-object v1

    .line 66
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    return-object p1
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/L5;->zze:I

    return v0
.end method

.method public final n()Lcom/google/android/gms/internal/pal/G5;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/L5;->zzf:Lcom/google/android/gms/internal/pal/G5;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/pal/G5;->o()Lcom/google/android/gms/internal/pal/G5;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final r()Lcom/google/android/gms/internal/pal/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/L5;->zzg:Lcom/google/android/gms/internal/pal/r;

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/internal/pal/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/L5;->zzh:Lcom/google/android/gms/internal/pal/r;

    return-object v0
.end method
