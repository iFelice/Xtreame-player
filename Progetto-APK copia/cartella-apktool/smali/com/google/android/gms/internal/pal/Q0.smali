.class public final Lcom/google/android/gms/internal/pal/Q0;
.super Lcom/google/android/gms/internal/pal/D;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/pal/Q0;


# instance fields
.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/pal/I;

.field private zzg:Lcom/google/android/gms/internal/pal/r;

.field private zzh:I

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/Q0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/pal/Q0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/pal/Q0;->zzb:Lcom/google/android/gms/internal/pal/Q0;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/pal/Q0;

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
    sget-object v0, Lcom/google/android/gms/internal/pal/i0;->J:Lcom/google/android/gms/internal/pal/i0;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/Q0;->zzf:Lcom/google/android/gms/internal/pal/I;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/pal/r;->H:Lcom/google/android/gms/internal/pal/q;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/Q0;->zzg:Lcom/google/android/gms/internal/pal/r;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/pal/Q0;->zzh:I

    .line 14
    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/pal/Q0;->zzi:I

    .line 16
    .line 17
    return-void
.end method

.method public static m()Lcom/google/android/gms/internal/pal/P0;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/Q0;->zzb:Lcom/google/android/gms/internal/pal/Q0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/pal/D;->h()Lcom/google/android/gms/internal/pal/C;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/pal/P0;

    .line 8
    .line 9
    return-object v0
.end method

.method public static n(Lcom/google/android/gms/internal/pal/Q0;Lcom/google/android/gms/internal/pal/q;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/pal/Q0;->zzf:Lcom/google/android/gms/internal/pal/I;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/pal/k;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/pal/k;->G:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/pal/D;->d(Lcom/google/android/gms/internal/pal/I;)Lcom/google/android/gms/internal/pal/I;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/Q0;->zzf:Lcom/google/android/gms/internal/pal/I;

    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/pal/Q0;->zzf:Lcom/google/android/gms/internal/pal/I;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic o(Lcom/google/android/gms/internal/pal/Q0;Lcom/google/android/gms/internal/pal/q;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/pal/Q0;->zze:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/pal/Q0;->zze:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/pal/Q0;->zzg:Lcom/google/android/gms/internal/pal/r;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic p(Lcom/google/android/gms/internal/pal/Q0;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/pal/Q0;->zzi:I

    .line 3
    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/pal/Q0;->zze:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/pal/Q0;->zze:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final l(I)Ljava/lang/Object;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x5

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x2

    .line 6
    add-int/lit8 p1, p1, -0x1

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    if-eq p1, v4, :cond_3

    .line 11
    .line 12
    if-eq p1, v3, :cond_2

    .line 13
    .line 14
    if-eq p1, v2, :cond_1

    .line 15
    .line 16
    if-eq p1, v1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/pal/Q0;->zzb:Lcom/google/android/gms/internal/pal/Q0;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/pal/P0;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/pal/Q0;->zzb:Lcom/google/android/gms/internal/pal/Q0;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/pal/C;-><init>(Lcom/google/android/gms/internal/pal/D;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/pal/Q0;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/pal/Q0;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const/4 p1, 0x7

    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v5, "zze"

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    aput-object v5, p1, v6

    .line 44
    .line 45
    const-string v5, "zzf"

    .line 46
    .line 47
    aput-object v5, p1, v0

    .line 48
    .line 49
    const-string v0, "zzg"

    .line 50
    .line 51
    aput-object v0, p1, v4

    .line 52
    .line 53
    const-string v0, "zzh"

    .line 54
    .line 55
    aput-object v0, p1, v3

    .line 56
    .line 57
    sget-object v0, Lcom/google/android/gms/internal/pal/L0;->a:Lcom/google/android/gms/internal/pal/L0;

    .line 58
    .line 59
    aput-object v0, p1, v2

    .line 60
    .line 61
    const-string v0, "zzi"

    .line 62
    .line 63
    aput-object v0, p1, v1

    .line 64
    .line 65
    sget-object v0, Lcom/google/android/gms/internal/pal/J0;->a:Lcom/google/android/gms/internal/pal/J0;

    .line 66
    .line 67
    const/4 v1, 0x6

    .line 68
    aput-object v0, p1, v1

    .line 69
    .line 70
    sget-object v0, Lcom/google/android/gms/internal/pal/Q0;->zzb:Lcom/google/android/gms/internal/pal/Q0;

    .line 71
    .line 72
    new-instance v1, Lcom/google/android/gms/internal/pal/j0;

    .line 73
    .line 74
    const-string v2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u100c\u0001\u0004\u100c\u0002"

    .line 75
    .line 76
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/pal/j0;-><init>(Lcom/google/android/gms/internal/pal/D;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1
.end method
