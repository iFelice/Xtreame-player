.class public final Lcom/google/android/gms/internal/measurement/p1;
.super Lcom/google/android/gms/internal/measurement/s2;
.source "SourceFile"


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/p1;


# instance fields
.field private zzd:Lcom/google/android/gms/internal/measurement/x2;

.field private zze:Lcom/google/android/gms/internal/measurement/x2;

.field private zzf:Lcom/google/android/gms/internal/measurement/y2;

.field private zzg:Lcom/google/android/gms/internal/measurement/y2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/p1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/p1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/measurement/p1;->zzb:Lcom/google/android/gms/internal/measurement/p1;

    .line 7
    .line 8
    const-class v1, Lcom/google/android/gms/internal/measurement/p1;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/s2;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/measurement/s2;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/s2;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/measurement/G2;->K:Lcom/google/android/gms/internal/measurement/G2;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzd:Lcom/google/android/gms/internal/measurement/x2;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zze:Lcom/google/android/gms/internal/measurement/x2;

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/measurement/W2;->K:Lcom/google/android/gms/internal/measurement/W2;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzf:Lcom/google/android/gms/internal/measurement/y2;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzg:Lcom/google/android/gms/internal/measurement/y2;

    .line 15
    .line 16
    return-void
.end method

.method public static A(Lcom/google/android/gms/internal/measurement/p1;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzf:Lcom/google/android/gms/internal/measurement/y2;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/measurement/d2;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/d2;->G:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v1

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/y2;->zzd(I)Lcom/google/android/gms/internal/measurement/y2;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzf:Lcom/google/android/gms/internal/measurement/y2;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzf:Lcom/google/android/gms/internal/measurement/y2;

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/c2;->b(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/y2;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static B(Lcom/google/android/gms/internal/measurement/p1;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zze:Lcom/google/android/gms/internal/measurement/x2;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/measurement/d2;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/d2;->G:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/measurement/G2;

    .line 11
    .line 12
    iget v1, v0, Lcom/google/android/gms/internal/measurement/G2;->I:I

    .line 13
    .line 14
    add-int/2addr v1, v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/G2;->i(I)Lcom/google/android/gms/internal/measurement/G2;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zze:Lcom/google/android/gms/internal/measurement/x2;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/p1;->zze:Lcom/google/android/gms/internal/measurement/x2;

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/c2;->b(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/y2;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static C(Lcom/google/android/gms/internal/measurement/p1;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzg:Lcom/google/android/gms/internal/measurement/y2;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/measurement/d2;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/d2;->G:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    add-int/2addr v1, v1

    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/y2;->zzd(I)Lcom/google/android/gms/internal/measurement/y2;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzg:Lcom/google/android/gms/internal/measurement/y2;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzg:Lcom/google/android/gms/internal/measurement/y2;

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/c2;->b(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/y2;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static D(Lcom/google/android/gms/internal/measurement/p1;Ljava/util/List;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzd:Lcom/google/android/gms/internal/measurement/x2;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/measurement/d2;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/measurement/d2;->G:Z

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/measurement/G2;

    .line 11
    .line 12
    iget v1, v0, Lcom/google/android/gms/internal/measurement/G2;->I:I

    .line 13
    .line 14
    add-int/2addr v1, v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/G2;->i(I)Lcom/google/android/gms/internal/measurement/G2;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzd:Lcom/google/android/gms/internal/measurement/x2;

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzd:Lcom/google/android/gms/internal/measurement/x2;

    .line 22
    .line 23
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/c2;->b(Ljava/lang/Iterable;Lcom/google/android/gms/internal/measurement/y2;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public static E(Lcom/google/android/gms/internal/measurement/p1;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/W2;->K:Lcom/google/android/gms/internal/measurement/W2;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzf:Lcom/google/android/gms/internal/measurement/y2;

    .line 4
    .line 5
    return-void
.end method

.method public static F(Lcom/google/android/gms/internal/measurement/p1;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/G2;->K:Lcom/google/android/gms/internal/measurement/G2;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zze:Lcom/google/android/gms/internal/measurement/x2;

    .line 4
    .line 5
    return-void
.end method

.method public static G(Lcom/google/android/gms/internal/measurement/p1;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/W2;->K:Lcom/google/android/gms/internal/measurement/W2;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzg:Lcom/google/android/gms/internal/measurement/y2;

    .line 4
    .line 5
    return-void
.end method

.method public static H(Lcom/google/android/gms/internal/measurement/p1;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/G2;->K:Lcom/google/android/gms/internal/measurement/G2;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzd:Lcom/google/android/gms/internal/measurement/x2;

    .line 4
    .line 5
    return-void
.end method

.method public static u()Lcom/google/android/gms/internal/measurement/o1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->zzb:Lcom/google/android/gms/internal/measurement/p1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/s2;->f()Lcom/google/android/gms/internal/measurement/r2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/o1;

    .line 8
    .line 9
    return-object v0
.end method

.method public static v()Lcom/google/android/gms/internal/measurement/p1;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->zzb:Lcom/google/android/gms/internal/measurement/p1;

    return-object v0
.end method


# virtual methods
.method public final p(I)Ljava/lang/Object;
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
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/measurement/p1;->zzb:Lcom/google/android/gms/internal/measurement/p1;

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    throw p1

    .line 23
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/measurement/o1;

    .line 24
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->zzb:Lcom/google/android/gms/internal/measurement/p1;

    .line 26
    .line 27
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/measurement/r2;-><init>(Lcom/google/android/gms/internal/measurement/s2;)V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/measurement/p1;

    .line 32
    .line 33
    invoke-direct {p1}, Lcom/google/android/gms/internal/measurement/p1;-><init>()V

    .line 34
    .line 35
    .line 36
    return-object p1

    .line 37
    :cond_3
    const/4 p1, 0x6

    .line 38
    new-array p1, p1, [Ljava/lang/Object;

    .line 39
    .line 40
    const-string v5, "zzd"

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    aput-object v5, p1, v6

    .line 44
    .line 45
    const-string v5, "zze"

    .line 46
    .line 47
    aput-object v5, p1, v0

    .line 48
    .line 49
    const-string v0, "zzf"

    .line 50
    .line 51
    aput-object v0, p1, v4

    .line 52
    .line 53
    const-class v0, Lcom/google/android/gms/internal/measurement/Z0;

    .line 54
    .line 55
    aput-object v0, p1, v3

    .line 56
    .line 57
    const-string v0, "zzg"

    .line 58
    .line 59
    aput-object v0, p1, v2

    .line 60
    .line 61
    const-class v0, Lcom/google/android/gms/internal/measurement/r1;

    .line 62
    .line 63
    aput-object v0, p1, v1

    .line 64
    .line 65
    sget-object v0, Lcom/google/android/gms/internal/measurement/p1;->zzb:Lcom/google/android/gms/internal/measurement/p1;

    .line 66
    .line 67
    new-instance v1, Lcom/google/android/gms/internal/measurement/X2;

    .line 68
    .line 69
    const-string v2, "\u0004\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    .line 70
    .line 71
    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/measurement/X2;-><init>(Lcom/google/android/gms/internal/measurement/s2;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method

.method public final q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzf:Lcom/google/android/gms/internal/measurement/y2;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final r()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zze:Lcom/google/android/gms/internal/measurement/x2;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/G2;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/G2;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzg:Lcom/google/android/gms/internal/measurement/y2;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final t()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzd:Lcom/google/android/gms/internal/measurement/x2;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/measurement/G2;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/G2;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final w()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzf:Lcom/google/android/gms/internal/measurement/y2;

    return-object v0
.end method

.method public final x()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zze:Lcom/google/android/gms/internal/measurement/x2;

    return-object v0
.end method

.method public final y()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzg:Lcom/google/android/gms/internal/measurement/y2;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/internal/measurement/x2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/p1;->zzd:Lcom/google/android/gms/internal/measurement/x2;

    .line 2
    .line 3
    return-object v0
.end method
