.class public final Lcom/google/android/gms/internal/ads/I6;
.super Lcom/google/android/gms/internal/ads/qH;
.source "SourceFile"


# static fields
.field public static final zza:I = 0x1

.field public static final zzb:I = 0x2

.field public static final zzc:I = 0x3

.field public static final zzd:I = 0x4

.field public static final zze:I = 0x5

.field public static final zzf:I = 0x6

.field public static final zzg:I = 0x7

.field public static final zzh:I = 0x8

.field public static final zzi:I = 0x9

.field public static final zzj:I = 0xa

.field public static final zzk:I = 0xb

.field public static final zzl:I = 0xc

.field public static final zzm:I = 0xd

.field private static final zzn:Lcom/google/android/gms/internal/ads/vH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/vH;"
        }
    .end annotation
.end field

.field private static final zzo:Lcom/google/android/gms/internal/ads/I6;

.field private static volatile zzp:Lcom/google/android/gms/internal/ads/SH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/SH;"
        }
    .end annotation
.end field


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/F6;

.field private zzB:I

.field private zzC:I

.field private zzD:I

.field private zzE:I

.field private zzF:I

.field private zzG:I

.field private zzH:J

.field private zzu:I

.field private zzv:J

.field private zzw:I

.field private zzx:J

.field private zzy:J

.field private zzz:Lcom/google/android/gms/internal/ads/uH;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/kH;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/kH;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/I6;->zzn:Lcom/google/android/gms/internal/ads/vH;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/I6;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/I6;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/google/android/gms/internal/ads/I6;->zzo:Lcom/google/android/gms/internal/ads/I6;

    .line 16
    .line 17
    const-class v1, Lcom/google/android/gms/internal/ads/I6;

    .line 18
    .line 19
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qH;->t(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/qH;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/qH;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/rH;->J:Lcom/google/android/gms/internal/ads/rH;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzz:Lcom/google/android/gms/internal/ads/uH;

    .line 7
    .line 8
    return-void
.end method

.method public static A(Lcom/google/android/gms/internal/ads/I6;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzv:J

    .line 8
    .line 9
    return-void
.end method

.method public static B(Lcom/google/android/gms/internal/ads/I6;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, La/r;->a(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzw:I

    .line 9
    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x2

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 15
    .line 16
    return-void
.end method

.method public static C(Lcom/google/android/gms/internal/ads/I6;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzx:J

    .line 8
    .line 9
    return-void
.end method

.method public static D(Lcom/google/android/gms/internal/ads/I6;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzy:J

    .line 8
    .line 9
    return-void
.end method

.method public static E(Lcom/google/android/gms/internal/ads/I6;Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzz:Lcom/google/android/gms/internal/ads/uH;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/QG;

    .line 5
    .line 6
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/QG;->G:Z

    .line 7
    .line 8
    if-nez v1, :cond_2

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/ads/rH;

    .line 11
    .line 12
    iget v1, v0, Lcom/google/android/gms/internal/ads/rH;->I:I

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/16 v2, 0xa

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int v2, v1, v1

    .line 20
    .line 21
    :goto_0
    if-lt v2, v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/google/android/gms/internal/ads/rH;

    .line 24
    .line 25
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/rH;->H:[I

    .line 26
    .line 27
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget v0, v0, Lcom/google/android/gms/internal/ads/rH;->I:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/rH;-><init>([IIZ)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/I6;->zzz:Lcom/google/android/gms/internal/ads/uH;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0

    .line 46
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lcom/google/android/gms/internal/ads/q7;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/I6;->zzz:Lcom/google/android/gms/internal/ads/uH;

    .line 63
    .line 64
    iget v0, v0, Lcom/google/android/gms/internal/ads/q7;->G:I

    .line 65
    .line 66
    check-cast v1, Lcom/google/android/gms/internal/ads/rH;

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/rH;->i(I)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    return-void
.end method

.method public static F(Lcom/google/android/gms/internal/ads/I6;Lcom/google/android/gms/internal/ads/F6;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzA:Lcom/google/android/gms/internal/ads/F6;

    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 10
    .line 11
    or-int/lit8 p1, p1, 0x10

    .line 12
    .line 13
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 14
    .line 15
    return-void
.end method

.method public static G(Lcom/google/android/gms/internal/ads/I6;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, La/r;->a(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzB:I

    .line 9
    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x20

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 15
    .line 16
    return-void
.end method

.method public static H(Lcom/google/android/gms/internal/ads/I6;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, La/r;->a(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzC:I

    .line 9
    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 11
    .line 12
    or-int/lit8 p1, p1, 0x40

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 15
    .line 16
    return-void
.end method

.method public static I(Lcom/google/android/gms/internal/ads/I6;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, La/r;->a(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzD:I

    .line 9
    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 11
    .line 12
    or-int/lit16 p1, p1, 0x80

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 15
    .line 16
    return-void
.end method

.method public static J(Lcom/google/android/gms/internal/ads/I6;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 6
    .line 7
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzE:I

    .line 8
    .line 9
    return-void
.end method

.method public static K(Lcom/google/android/gms/internal/ads/I6;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, La/r;->a(I)I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzF:I

    .line 9
    .line 10
    iget p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 11
    .line 12
    or-int/lit16 p1, p1, 0x200

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 15
    .line 16
    return-void
.end method

.method public static L(Lcom/google/android/gms/internal/ads/I6;Lcom/google/android/gms/internal/ads/L6;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p1, p1, Lcom/google/android/gms/internal/ads/L6;->G:I

    .line 5
    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzG:I

    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 9
    .line 10
    or-int/lit16 p1, p1, 0x400

    .line 11
    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 13
    .line 14
    return-void
.end method

.method public static M(Lcom/google/android/gms/internal/ads/I6;J)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzu:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/I6;->zzH:J

    .line 8
    .line 9
    return-void
.end method

.method public static P()Lcom/google/android/gms/internal/ads/H6;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/I6;->zzo:Lcom/google/android/gms/internal/ads/I6;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qH;->g()Lcom/google/android/gms/internal/ads/oH;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/H6;

    .line 8
    .line 9
    return-object v0
.end method

.method public static Q([B)Lcom/google/android/gms/internal/ads/I6;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/I6;->zzo:Lcom/google/android/gms/internal/ads/I6;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 5
    .line 6
    sget-object v2, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 7
    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 9
    .line 10
    invoke-static {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ads/qH;->z(Lcom/google/android/gms/internal/ads/qH;[BILcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/qH;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/qH;->y(Lcom/google/android/gms/internal/ads/qH;)V

    .line 15
    .line 16
    .line 17
    check-cast p0, Lcom/google/android/gms/internal/ads/I6;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final N()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzv:J

    return-wide v0
.end method

.method public final O()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/I6;->zzw:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/16 v2, 0x3e8

    .line 9
    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x3

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x2

    .line 17
    goto :goto_0

    .line 18
    :cond_2
    const/4 v0, 0x1

    .line 19
    :goto_0
    if-nez v0, :cond_3

    .line 20
    .line 21
    return v1

    .line 22
    :cond_3
    return v0
.end method

.method public final x(ILcom/google/android/gms/internal/ads/qH;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 p2, 0x1

    .line 2
    invoke-static {p1}, Lu/h;->b(I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/I6;->zzp:Lcom/google/android/gms/internal/ads/SH;

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    const-class p2, Lcom/google/android/gms/internal/ads/I6;

    .line 20
    .line 21
    monitor-enter p2

    .line 22
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/I6;->zzp:Lcom/google/android/gms/internal/ads/SH;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    new-instance p1, Lcom/google/android/gms/internal/ads/pH;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    sput-object p1, Lcom/google/android/gms/internal/ads/I6;->zzp:Lcom/google/android/gms/internal/ads/SH;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit p2

    .line 37
    goto :goto_2

    .line 38
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1

    .line 40
    :cond_1
    :goto_2
    return-object p1

    .line 41
    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/I6;->zzo:Lcom/google/android/gms/internal/ads/I6;

    .line 42
    .line 43
    return-object p1

    .line 44
    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/H6;

    .line 45
    .line 46
    sget-object p2, Lcom/google/android/gms/internal/ads/I6;->zzo:Lcom/google/android/gms/internal/ads/I6;

    .line 47
    .line 48
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/oH;-><init>(Lcom/google/android/gms/internal/ads/qH;)V

    .line 49
    .line 50
    .line 51
    return-object p1

    .line 52
    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/I6;

    .line 53
    .line 54
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/I6;-><init>()V

    .line 55
    .line 56
    .line 57
    return-object p1

    .line 58
    :pswitch_4
    const/16 p1, 0x15

    .line 59
    .line 60
    new-array p1, p1, [Ljava/lang/Object;

    .line 61
    .line 62
    const-string v0, "zzu"

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    aput-object v0, p1, v1

    .line 66
    .line 67
    const-string v0, "zzv"

    .line 68
    .line 69
    aput-object v0, p1, p2

    .line 70
    .line 71
    const-string p2, "zzw"

    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    aput-object p2, p1, v0

    .line 75
    .line 76
    sget-object p2, Lcom/google/android/gms/internal/ads/B7;->a:Lcom/google/android/gms/internal/ads/B7;

    .line 77
    .line 78
    const/4 v0, 0x3

    .line 79
    aput-object p2, p1, v0

    .line 80
    .line 81
    const-string v0, "zzx"

    .line 82
    .line 83
    const/4 v1, 0x4

    .line 84
    aput-object v0, p1, v1

    .line 85
    .line 86
    const-string v0, "zzy"

    .line 87
    .line 88
    const/4 v1, 0x5

    .line 89
    aput-object v0, p1, v1

    .line 90
    .line 91
    const-string v0, "zzz"

    .line 92
    .line 93
    const/4 v1, 0x6

    .line 94
    aput-object v0, p1, v1

    .line 95
    .line 96
    sget-object v0, Lcom/google/android/gms/internal/ads/p7;->a:Lcom/google/android/gms/internal/ads/p7;

    .line 97
    .line 98
    const/4 v1, 0x7

    .line 99
    aput-object v0, p1, v1

    .line 100
    .line 101
    const-string v0, "zzA"

    .line 102
    .line 103
    const/16 v1, 0x8

    .line 104
    .line 105
    aput-object v0, p1, v1

    .line 106
    .line 107
    const-string v0, "zzB"

    .line 108
    .line 109
    const/16 v1, 0x9

    .line 110
    .line 111
    aput-object v0, p1, v1

    .line 112
    .line 113
    const/16 v0, 0xa

    .line 114
    .line 115
    aput-object p2, p1, v0

    .line 116
    .line 117
    const-string v0, "zzC"

    .line 118
    .line 119
    const/16 v1, 0xb

    .line 120
    .line 121
    aput-object v0, p1, v1

    .line 122
    .line 123
    const/16 v0, 0xc

    .line 124
    .line 125
    aput-object p2, p1, v0

    .line 126
    .line 127
    const-string v0, "zzD"

    .line 128
    .line 129
    const/16 v1, 0xd

    .line 130
    .line 131
    aput-object v0, p1, v1

    .line 132
    .line 133
    const/16 v0, 0xe

    .line 134
    .line 135
    aput-object p2, p1, v0

    .line 136
    .line 137
    const-string v0, "zzE"

    .line 138
    .line 139
    const/16 v1, 0xf

    .line 140
    .line 141
    aput-object v0, p1, v1

    .line 142
    .line 143
    const-string v0, "zzF"

    .line 144
    .line 145
    const/16 v1, 0x10

    .line 146
    .line 147
    aput-object v0, p1, v1

    .line 148
    .line 149
    const/16 v0, 0x11

    .line 150
    .line 151
    aput-object p2, p1, v0

    .line 152
    .line 153
    const-string p2, "zzG"

    .line 154
    .line 155
    const/16 v0, 0x12

    .line 156
    .line 157
    aput-object p2, p1, v0

    .line 158
    .line 159
    sget-object p2, Lcom/google/android/gms/internal/ads/K6;->a:Lcom/google/android/gms/internal/ads/K6;

    .line 160
    .line 161
    const/16 v0, 0x13

    .line 162
    .line 163
    aput-object p2, p1, v0

    .line 164
    .line 165
    const-string p2, "zzH"

    .line 166
    .line 167
    const/16 v0, 0x14

    .line 168
    .line 169
    aput-object p2, p1, v0

    .line 170
    .line 171
    sget-object p2, Lcom/google/android/gms/internal/ads/I6;->zzo:Lcom/google/android/gms/internal/ads/I6;

    .line 172
    .line 173
    const-string v0, "\u0004\r\u0000\u0001\u0001\r\r\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u180c\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u081e\u0006\u1009\u0004\u0007\u180c\u0005\u0008\u180c\u0006\t\u180c\u0007\n\u1004\u0008\u000b\u180c\t\u000c\u180c\n\r\u1002\u000b"

    .line 174
    .line 175
    new-instance v1, Lcom/google/android/gms/internal/ads/XH;

    .line 176
    .line 177
    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/XH;-><init>(Lcom/google/android/gms/internal/ads/qH;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    return-object v1

    .line 181
    :pswitch_5
    const/4 p1, 0x0

    .line 182
    return-object p1

    .line 183
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    return-object p1

    .line 188
    nop

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
