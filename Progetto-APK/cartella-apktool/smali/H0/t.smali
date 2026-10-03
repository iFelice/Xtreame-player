.class public final LH0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS0/h;
.implements LS0/k;
.implements LO0/W;
.implements LW0/u;
.implements LO0/S;


# static fields
.field public static final E0:Ljava/util/Set;


# instance fields
.field public A0:Z

.field public B0:J

.field public C0:Lm0/n;

.field public D0:LH0/l;

.field public final G:Ljava/lang/String;

.field public final H:I

.field public final I:LD0/U;

.field public final J:LH0/j;

.field public final K:LS0/d;

.field public final L:Lm0/t;

.field public final M:LG0/r;

.field public final N:LG0/o;

.field public final O:LU4/b;

.field public final P:LS0/m;

.field public final Q:LO0/D;

.field public final R:I

.field public final S:LJ2/t;

.field public final T:Ljava/util/ArrayList;

.field public final U:Ljava/util/List;

.field public final V:LH0/q;

.field public final W:LH0/q;

.field public final X:Landroid/os/Handler;

.field public final Y:Ljava/util/ArrayList;

.field public final Z:Ljava/util/Map;

.field public a0:LP0/f;

.field public b0:[LH0/s;

.field public c0:[I

.field public final d0:Ljava/util/HashSet;

.field public final e0:Landroid/util/SparseIntArray;

.field public f0:LH0/r;

.field public g0:I

.field public h0:I

.field public i0:Z

.field public j0:Z

.field public k0:I

.field public l0:Lm0/t;

.field public m0:Lm0/t;

.field public n0:Z

.field public o0:LO0/Z;

.field public p0:Ljava/util/Set;

.field public q0:[I

.field public r0:I

.field public s0:Z

.field public t0:[Z

.field public u0:[Z

.field public v0:J

.field public w0:J

.field public x0:Z

.field public y0:Z

.field public z0:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x5

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    const/4 v6, 0x3

    .line 19
    new-array v6, v6, [Ljava/lang/Integer;

    .line 20
    .line 21
    const/4 v7, 0x0

    .line 22
    aput-object v2, v6, v7

    .line 23
    .line 24
    aput-object v4, v6, v1

    .line 25
    .line 26
    aput-object v5, v6, v3

    .line 27
    .line 28
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, LH0/t;->E0:Ljava/util/Set;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILD0/U;LH0/j;Ljava/util/Map;LS0/d;JLm0/t;LG0/r;LG0/o;LU4/b;LO0/D;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LH0/t;->G:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, LH0/t;->H:I

    .line 7
    .line 8
    iput-object p3, p0, LH0/t;->I:LD0/U;

    .line 9
    .line 10
    iput-object p4, p0, LH0/t;->J:LH0/j;

    .line 11
    .line 12
    iput-object p5, p0, LH0/t;->Z:Ljava/util/Map;

    .line 13
    .line 14
    iput-object p6, p0, LH0/t;->K:LS0/d;

    .line 15
    .line 16
    iput-object p9, p0, LH0/t;->L:Lm0/t;

    .line 17
    .line 18
    iput-object p10, p0, LH0/t;->M:LG0/r;

    .line 19
    .line 20
    iput-object p11, p0, LH0/t;->N:LG0/o;

    .line 21
    .line 22
    iput-object p12, p0, LH0/t;->O:LU4/b;

    .line 23
    .line 24
    iput-object p13, p0, LH0/t;->Q:LO0/D;

    .line 25
    .line 26
    iput p14, p0, LH0/t;->R:I

    .line 27
    .line 28
    new-instance p1, LS0/m;

    .line 29
    .line 30
    const-string p2, "Loader:HlsSampleStreamWrapper"

    .line 31
    .line 32
    invoke-direct {p1, p2}, LS0/m;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, LH0/t;->P:LS0/m;

    .line 36
    .line 37
    new-instance p1, LJ2/t;

    .line 38
    .line 39
    const/4 p2, 0x1

    .line 40
    invoke-direct {p1, p2}, LJ2/t;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, LH0/t;->S:LJ2/t;

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    new-array p3, p1, [I

    .line 47
    .line 48
    iput-object p3, p0, LH0/t;->c0:[I

    .line 49
    .line 50
    new-instance p3, Ljava/util/HashSet;

    .line 51
    .line 52
    sget-object p4, LH0/t;->E0:Ljava/util/Set;

    .line 53
    .line 54
    invoke-interface {p4}, Ljava/util/Set;->size()I

    .line 55
    .line 56
    .line 57
    move-result p5

    .line 58
    invoke-direct {p3, p5}, Ljava/util/HashSet;-><init>(I)V

    .line 59
    .line 60
    .line 61
    iput-object p3, p0, LH0/t;->d0:Ljava/util/HashSet;

    .line 62
    .line 63
    new-instance p3, Landroid/util/SparseIntArray;

    .line 64
    .line 65
    invoke-interface {p4}, Ljava/util/Set;->size()I

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    invoke-direct {p3, p4}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 70
    .line 71
    .line 72
    iput-object p3, p0, LH0/t;->e0:Landroid/util/SparseIntArray;

    .line 73
    .line 74
    new-array p3, p1, [LH0/s;

    .line 75
    .line 76
    iput-object p3, p0, LH0/t;->b0:[LH0/s;

    .line 77
    .line 78
    new-array p3, p1, [Z

    .line 79
    .line 80
    iput-object p3, p0, LH0/t;->u0:[Z

    .line 81
    .line 82
    new-array p3, p1, [Z

    .line 83
    .line 84
    iput-object p3, p0, LH0/t;->t0:[Z

    .line 85
    .line 86
    new-instance p3, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p3, p0, LH0/t;->T:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    iput-object p3, p0, LH0/t;->U:Ljava/util/List;

    .line 98
    .line 99
    new-instance p3, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object p3, p0, LH0/t;->Y:Ljava/util/ArrayList;

    .line 105
    .line 106
    new-instance p3, LH0/q;

    .line 107
    .line 108
    invoke-direct {p3, p0, p1}, LH0/q;-><init>(Ljava/lang/Object;I)V

    .line 109
    .line 110
    .line 111
    iput-object p3, p0, LH0/t;->V:LH0/q;

    .line 112
    .line 113
    new-instance p1, LH0/q;

    .line 114
    .line 115
    invoke-direct {p1, p0, p2}, LH0/q;-><init>(Ljava/lang/Object;I)V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, LH0/t;->W:LH0/q;

    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    invoke-static {p1}, Lp0/M;->n(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iput-object p1, p0, LH0/t;->X:Landroid/os/Handler;

    .line 126
    .line 127
    iput-wide p7, p0, LH0/t;->v0:J

    .line 128
    .line 129
    iput-wide p7, p0, LH0/t;->w0:J

    .line 130
    .line 131
    return-void
.end method

.method public static A(Lm0/t;Lm0/t;Z)Lm0/t;
    .locals 8

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    iget-object v0, p1, Lm0/t;->o:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v0}, Lm0/O;->i(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lm0/t;->k:Ljava/lang/String;

    .line 11
    .line 12
    invoke-static {v1, v2}, Lp0/M;->t(ILjava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    const/4 v4, 0x1

    .line 17
    if-ne v3, v4, :cond_1

    .line 18
    .line 19
    invoke-static {v1, v2}, Lp0/M;->u(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lm0/O;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {v2, v0}, Lm0/O;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v7, v2

    .line 33
    move-object v2, v0

    .line 34
    move-object v0, v7

    .line 35
    :goto_0
    invoke-virtual {p1}, Lm0/t;->a()Lm0/s;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v5, p0, Lm0/t;->a:Ljava/lang/String;

    .line 40
    .line 41
    iput-object v5, v3, Lm0/s;->a:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v5, p0, Lm0/t;->b:Ljava/lang/String;

    .line 44
    .line 45
    iput-object v5, v3, Lm0/s;->b:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v5, p0, Lm0/t;->c:Ljava/util/List;

    .line 48
    .line 49
    invoke-static {v5}, Lz4/H;->s(Ljava/util/Collection;)Lz4/H;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    iput-object v5, v3, Lm0/s;->c:Ljava/util/List;

    .line 54
    .line 55
    iget-object v5, p0, Lm0/t;->d:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v5, v3, Lm0/s;->d:Ljava/lang/String;

    .line 58
    .line 59
    iget v5, p0, Lm0/t;->e:I

    .line 60
    .line 61
    iput v5, v3, Lm0/s;->e:I

    .line 62
    .line 63
    iget v5, p0, Lm0/t;->f:I

    .line 64
    .line 65
    iput v5, v3, Lm0/s;->f:I

    .line 66
    .line 67
    const/4 v5, -0x1

    .line 68
    if-eqz p2, :cond_2

    .line 69
    .line 70
    iget v6, p0, Lm0/t;->h:I

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 v6, -0x1

    .line 74
    :goto_1
    iput v6, v3, Lm0/s;->h:I

    .line 75
    .line 76
    if-eqz p2, :cond_3

    .line 77
    .line 78
    iget p2, p0, Lm0/t;->i:I

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    const/4 p2, -0x1

    .line 82
    :goto_2
    iput p2, v3, Lm0/s;->i:I

    .line 83
    .line 84
    iput-object v0, v3, Lm0/s;->j:Ljava/lang/String;

    .line 85
    .line 86
    const/4 p2, 0x2

    .line 87
    if-ne v1, p2, :cond_4

    .line 88
    .line 89
    iget p2, p0, Lm0/t;->v:I

    .line 90
    .line 91
    iput p2, v3, Lm0/s;->u:I

    .line 92
    .line 93
    iget p2, p0, Lm0/t;->w:I

    .line 94
    .line 95
    iput p2, v3, Lm0/s;->v:I

    .line 96
    .line 97
    iget p2, p0, Lm0/t;->z:F

    .line 98
    .line 99
    iput p2, v3, Lm0/s;->y:F

    .line 100
    .line 101
    :cond_4
    if-eqz v2, :cond_5

    .line 102
    .line 103
    invoke-static {v2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iput-object p2, v3, Lm0/s;->n:Ljava/lang/String;

    .line 108
    .line 109
    :cond_5
    iget p2, p0, Lm0/t;->G:I

    .line 110
    .line 111
    if-eq p2, v5, :cond_6

    .line 112
    .line 113
    if-ne v1, v4, :cond_6

    .line 114
    .line 115
    iput p2, v3, Lm0/s;->F:I

    .line 116
    .line 117
    :cond_6
    iget-object p0, p0, Lm0/t;->l:Lm0/N;

    .line 118
    .line 119
    if-eqz p0, :cond_8

    .line 120
    .line 121
    iget-object p1, p1, Lm0/t;->l:Lm0/N;

    .line 122
    .line 123
    if-eqz p1, :cond_7

    .line 124
    .line 125
    invoke-virtual {p1, p0}, Lm0/N;->b(Lm0/N;)Lm0/N;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    :cond_7
    iput-object p0, v3, Lm0/s;->k:Lm0/N;

    .line 130
    .line 131
    :cond_8
    new-instance p0, Lm0/t;

    .line 132
    .line 133
    invoke-direct {p0, v3}, Lm0/t;-><init>(Lm0/s;)V

    .line 134
    .line 135
    .line 136
    return-object p0
.end method

.method public static D(I)I
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p0, v1, :cond_2

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    if-eq p0, v0, :cond_1

    .line 7
    .line 8
    if-eq p0, v2, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    return v1

    .line 13
    :cond_1
    return v2

    .line 14
    :cond_2
    return v0
.end method

.method public static y(II)LW0/q;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Unmapped track with id "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string p0, " of type "

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string p1, "HlsSampleStreamWrapper"

    .line 24
    .line 25
    invoke-static {p1, p0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance p0, LW0/q;

    .line 29
    .line 30
    invoke-direct {p0}, LW0/q;-><init>()V

    .line 31
    .line 32
    .line 33
    return-object p0
.end method


# virtual methods
.method public final B(I)V
    .locals 9

    .line 1
    iget-object v0, p0, LH0/t;->P:LS0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, LS0/m;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, LH0/t;->T:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, -0x1

    .line 19
    if-ge p1, v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, p1}, LH0/t;->x(I)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, -0x1

    .line 32
    :goto_1
    if-ne p1, v3, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-virtual {p0}, LH0/t;->C()LH0/l;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-wide v7, v2, LP0/f;->N:J

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, LH0/l;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {p1, v3, v0}, Lp0/M;->W(IILjava/util/ArrayList;)V

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    :goto_2
    iget-object v4, p0, LH0/t;->b0:[LH0/s;

    .line 57
    .line 58
    array-length v4, v4

    .line 59
    if-ge v3, v4, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2, v3}, LH0/l;->e(I)I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    iget-object v5, p0, LH0/t;->b0:[LH0/s;

    .line 66
    .line 67
    aget-object v5, v5, v3

    .line 68
    .line 69
    invoke-virtual {v5, v4}, LO0/T;->n(I)V

    .line 70
    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_4

    .line 80
    .line 81
    iget-wide v0, p0, LH0/t;->v0:J

    .line 82
    .line 83
    iput-wide v0, p0, LH0/t;->w0:J

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    invoke-static {v0}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, LH0/l;

    .line 91
    .line 92
    iput-boolean v1, v0, LH0/l;->q0:Z

    .line 93
    .line 94
    :goto_3
    iput-boolean p1, p0, LH0/t;->z0:Z

    .line 95
    .line 96
    iget v4, p0, LH0/t;->g0:I

    .line 97
    .line 98
    iget-wide v5, v2, LP0/f;->M:J

    .line 99
    .line 100
    iget-object v3, p0, LH0/t;->Q:LO0/D;

    .line 101
    .line 102
    invoke-virtual/range {v3 .. v8}, LO0/D;->h(IJJ)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final C()LH0/l;
    .locals 2

    .line 1
    iget-object v0, p0, LH0/t;->T:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, LH0/l;

    .line 9
    .line 10
    return-object v0
.end method

.method public final E()Z
    .locals 5

    .line 1
    iget-wide v0, p0, LH0/t;->w0:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-eqz v4, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final F()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-boolean v3, v0, LH0/t;->n0:Z

    .line 6
    .line 7
    if-nez v3, :cond_1a

    .line 8
    .line 9
    iget-object v3, v0, LH0/t;->q0:[I

    .line 10
    .line 11
    if-nez v3, :cond_1a

    .line 12
    .line 13
    iget-boolean v3, v0, LH0/t;->i0:Z

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_12

    .line 18
    .line 19
    :cond_0
    iget-object v3, v0, LH0/t;->b0:[LH0/s;

    .line 20
    .line 21
    array-length v4, v3

    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    if-ge v5, v4, :cond_2

    .line 24
    .line 25
    aget-object v6, v3, v5

    .line 26
    .line 27
    invoke-virtual {v6}, LO0/T;->w()Lm0/t;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    add-int/2addr v5, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget-object v3, v0, LH0/t;->o0:LO0/Z;

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    const/4 v5, -0x1

    .line 40
    if-eqz v3, :cond_a

    .line 41
    .line 42
    iget v3, v3, LO0/Z;->a:I

    .line 43
    .line 44
    new-array v6, v3, [I

    .line 45
    .line 46
    iput-object v6, v0, LH0/t;->q0:[I

    .line 47
    .line 48
    invoke-static {v6, v5}, Ljava/util/Arrays;->fill([II)V

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    :goto_1
    if-ge v5, v3, :cond_9

    .line 53
    .line 54
    const/4 v6, 0x0

    .line 55
    :goto_2
    iget-object v7, v0, LH0/t;->b0:[LH0/s;

    .line 56
    .line 57
    array-length v8, v7

    .line 58
    if-ge v6, v8, :cond_8

    .line 59
    .line 60
    aget-object v7, v7, v6

    .line 61
    .line 62
    invoke-virtual {v7}, LO0/T;->w()Lm0/t;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v8, v0, LH0/t;->o0:LO0/Z;

    .line 70
    .line 71
    invoke-virtual {v8, v5}, LO0/Z;->a(I)Lm0/g0;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    iget-object v8, v8, Lm0/g0;->d:[Lm0/t;

    .line 76
    .line 77
    aget-object v8, v8, v1

    .line 78
    .line 79
    iget-object v9, v8, Lm0/t;->o:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v10, v7, Lm0/t;->o:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v10}, Lm0/O;->i(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v11

    .line 87
    if-eq v11, v4, :cond_3

    .line 88
    .line 89
    invoke-static {v9}, Lm0/O;->i(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    if-ne v11, v7, :cond_7

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    invoke-static {v10, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-nez v9, :cond_4

    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_4
    const-string v9, "application/cea-608"

    .line 104
    .line 105
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-nez v9, :cond_5

    .line 110
    .line 111
    const-string v9, "application/cea-708"

    .line 112
    .line 113
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eqz v9, :cond_6

    .line 118
    .line 119
    :cond_5
    iget v7, v7, Lm0/t;->L:I

    .line 120
    .line 121
    iget v8, v8, Lm0/t;->L:I

    .line 122
    .line 123
    if-ne v7, v8, :cond_7

    .line 124
    .line 125
    :cond_6
    :goto_3
    iget-object v7, v0, LH0/t;->q0:[I

    .line 126
    .line 127
    aput v6, v7, v5

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_7
    :goto_4
    add-int/2addr v6, v2

    .line 131
    goto :goto_2

    .line 132
    :cond_8
    :goto_5
    add-int/2addr v5, v2

    .line 133
    goto :goto_1

    .line 134
    :cond_9
    iget-object v1, v0, LH0/t;->Y:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_1a

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    check-cast v2, LH0/p;

    .line 151
    .line 152
    invoke-virtual {v2}, LH0/p;->a()V

    .line 153
    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_a
    iget-object v3, v0, LH0/t;->b0:[LH0/s;

    .line 157
    .line 158
    array-length v3, v3

    .line 159
    const/4 v6, -0x2

    .line 160
    const/4 v7, 0x0

    .line 161
    const/4 v8, -0x2

    .line 162
    const/4 v9, -0x1

    .line 163
    :goto_7
    const/4 v10, 0x2

    .line 164
    if-ge v7, v3, :cond_10

    .line 165
    .line 166
    iget-object v11, v0, LH0/t;->b0:[LH0/s;

    .line 167
    .line 168
    aget-object v11, v11, v7

    .line 169
    .line 170
    invoke-virtual {v11}, LO0/T;->w()Lm0/t;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    iget-object v11, v11, Lm0/t;->o:Ljava/lang/String;

    .line 178
    .line 179
    invoke-static {v11}, Lm0/O;->o(Ljava/lang/String;)Z

    .line 180
    .line 181
    .line 182
    move-result v12

    .line 183
    if-eqz v12, :cond_b

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_b
    invoke-static {v11}, Lm0/O;->k(Ljava/lang/String;)Z

    .line 187
    .line 188
    .line 189
    move-result v10

    .line 190
    if-eqz v10, :cond_c

    .line 191
    .line 192
    const/4 v10, 0x1

    .line 193
    goto :goto_8

    .line 194
    :cond_c
    invoke-static {v11}, Lm0/O;->n(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    if-eqz v10, :cond_d

    .line 199
    .line 200
    const/4 v10, 0x3

    .line 201
    goto :goto_8

    .line 202
    :cond_d
    const/4 v10, -0x2

    .line 203
    :goto_8
    invoke-static {v10}, LH0/t;->D(I)I

    .line 204
    .line 205
    .line 206
    move-result v11

    .line 207
    invoke-static {v8}, LH0/t;->D(I)I

    .line 208
    .line 209
    .line 210
    move-result v12

    .line 211
    if-le v11, v12, :cond_e

    .line 212
    .line 213
    move v9, v7

    .line 214
    move v8, v10

    .line 215
    goto :goto_9

    .line 216
    :cond_e
    if-ne v10, v8, :cond_f

    .line 217
    .line 218
    if-eq v9, v5, :cond_f

    .line 219
    .line 220
    const/4 v9, -0x1

    .line 221
    :cond_f
    :goto_9
    add-int/2addr v7, v2

    .line 222
    goto :goto_7

    .line 223
    :cond_10
    iget-object v4, v0, LH0/t;->J:LH0/j;

    .line 224
    .line 225
    iget-object v4, v4, LH0/j;->h:Lm0/g0;

    .line 226
    .line 227
    iget v6, v4, Lm0/g0;->a:I

    .line 228
    .line 229
    iput v5, v0, LH0/t;->r0:I

    .line 230
    .line 231
    new-array v5, v3, [I

    .line 232
    .line 233
    iput-object v5, v0, LH0/t;->q0:[I

    .line 234
    .line 235
    const/4 v5, 0x0

    .line 236
    :goto_a
    if-ge v5, v3, :cond_11

    .line 237
    .line 238
    iget-object v7, v0, LH0/t;->q0:[I

    .line 239
    .line 240
    aput v5, v7, v5

    .line 241
    .line 242
    add-int/2addr v5, v2

    .line 243
    goto :goto_a

    .line 244
    :cond_11
    new-array v5, v3, [Lm0/g0;

    .line 245
    .line 246
    const/4 v7, 0x0

    .line 247
    :goto_b
    if-ge v7, v3, :cond_18

    .line 248
    .line 249
    iget-object v11, v0, LH0/t;->b0:[LH0/s;

    .line 250
    .line 251
    aget-object v11, v11, v7

    .line 252
    .line 253
    invoke-virtual {v11}, LO0/T;->w()Lm0/t;

    .line 254
    .line 255
    .line 256
    move-result-object v11

    .line 257
    invoke-static {v11}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    iget-object v12, v0, LH0/t;->G:Ljava/lang/String;

    .line 261
    .line 262
    iget-object v13, v0, LH0/t;->L:Lm0/t;

    .line 263
    .line 264
    if-ne v7, v9, :cond_15

    .line 265
    .line 266
    new-array v14, v6, [Lm0/t;

    .line 267
    .line 268
    const/4 v15, 0x0

    .line 269
    :goto_c
    if-ge v15, v6, :cond_14

    .line 270
    .line 271
    iget-object v1, v4, Lm0/g0;->d:[Lm0/t;

    .line 272
    .line 273
    aget-object v1, v1, v15

    .line 274
    .line 275
    if-ne v8, v2, :cond_12

    .line 276
    .line 277
    if-eqz v13, :cond_12

    .line 278
    .line 279
    invoke-virtual {v1, v13}, Lm0/t;->e(Lm0/t;)Lm0/t;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    :cond_12
    if-ne v6, v2, :cond_13

    .line 284
    .line 285
    invoke-virtual {v11, v1}, Lm0/t;->e(Lm0/t;)Lm0/t;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    goto :goto_d

    .line 290
    :cond_13
    invoke-static {v1, v11, v2}, LH0/t;->A(Lm0/t;Lm0/t;Z)Lm0/t;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    :goto_d
    aput-object v1, v14, v15

    .line 295
    .line 296
    add-int/2addr v15, v2

    .line 297
    const/4 v1, 0x0

    .line 298
    goto :goto_c

    .line 299
    :cond_14
    new-instance v1, Lm0/g0;

    .line 300
    .line 301
    invoke-direct {v1, v12, v14}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 302
    .line 303
    .line 304
    aput-object v1, v5, v7

    .line 305
    .line 306
    iput v7, v0, LH0/t;->r0:I

    .line 307
    .line 308
    const/4 v14, 0x0

    .line 309
    goto :goto_10

    .line 310
    :cond_15
    if-ne v8, v10, :cond_16

    .line 311
    .line 312
    iget-object v1, v11, Lm0/t;->o:Ljava/lang/String;

    .line 313
    .line 314
    invoke-static {v1}, Lm0/O;->k(Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_16

    .line 319
    .line 320
    goto :goto_e

    .line 321
    :cond_16
    const/4 v13, 0x0

    .line 322
    :goto_e
    const-string v1, ":muxed:"

    .line 323
    .line 324
    invoke-static {v12, v1}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    if-ge v7, v9, :cond_17

    .line 329
    .line 330
    move v12, v7

    .line 331
    goto :goto_f

    .line 332
    :cond_17
    add-int/lit8 v12, v7, -0x1

    .line 333
    .line 334
    :goto_f
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    new-instance v12, Lm0/g0;

    .line 342
    .line 343
    const/4 v14, 0x0

    .line 344
    invoke-static {v13, v11, v14}, LH0/t;->A(Lm0/t;Lm0/t;Z)Lm0/t;

    .line 345
    .line 346
    .line 347
    move-result-object v11

    .line 348
    new-array v13, v2, [Lm0/t;

    .line 349
    .line 350
    aput-object v11, v13, v14

    .line 351
    .line 352
    invoke-direct {v12, v1, v13}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 353
    .line 354
    .line 355
    aput-object v12, v5, v7

    .line 356
    .line 357
    :goto_10
    add-int/2addr v7, v2

    .line 358
    const/4 v1, 0x0

    .line 359
    goto :goto_b

    .line 360
    :cond_18
    const/4 v14, 0x0

    .line 361
    invoke-virtual {v0, v5}, LH0/t;->z([Lm0/g0;)LO0/Z;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    iput-object v1, v0, LH0/t;->o0:LO0/Z;

    .line 366
    .line 367
    iget-object v1, v0, LH0/t;->p0:Ljava/util/Set;

    .line 368
    .line 369
    if-nez v1, :cond_19

    .line 370
    .line 371
    const/4 v1, 0x1

    .line 372
    goto :goto_11

    .line 373
    :cond_19
    const/4 v1, 0x0

    .line 374
    :goto_11
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 375
    .line 376
    .line 377
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    iput-object v1, v0, LH0/t;->p0:Ljava/util/Set;

    .line 382
    .line 383
    iput-boolean v2, v0, LH0/t;->j0:Z

    .line 384
    .line 385
    iget-object v1, v0, LH0/t;->I:LD0/U;

    .line 386
    .line 387
    invoke-virtual {v1}, LD0/U;->I()V

    .line 388
    .line 389
    .line 390
    :cond_1a
    :goto_12
    return-void
.end method

.method public final G()V
    .locals 3

    .line 1
    iget-object v0, p0, LH0/t;->P:LS0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, LS0/m;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LH0/t;->J:LH0/j;

    .line 7
    .line 8
    iget-object v1, v0, LH0/j;->o:LO0/b;

    .line 9
    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    iget-object v1, v0, LH0/j;->p:Landroid/net/Uri;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-object v2, v0, LH0/j;->q:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, LH0/j;->p:Landroid/net/Uri;

    .line 25
    .line 26
    iget-object v0, v0, LH0/j;->g:LI0/w;

    .line 27
    .line 28
    check-cast v0, LI0/c;

    .line 29
    .line 30
    iget-object v0, v0, LI0/c;->J:Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, LI0/b;

    .line 37
    .line 38
    iget-object v1, v0, LI0/b;->H:LS0/m;

    .line 39
    .line 40
    invoke-virtual {v1}, LS0/m;->b()V

    .line 41
    .line 42
    .line 43
    iget-object v0, v0, LI0/b;->P:Ljava/io/IOException;

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    throw v0

    .line 49
    :cond_1
    :goto_0
    return-void

    .line 50
    :cond_2
    throw v1
.end method

.method public final varargs H([Lm0/g0;[I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, LH0/t;->z([Lm0/g0;)LO0/Z;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, LH0/t;->o0:LO0/Z;

    .line 6
    .line 7
    new-instance p1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, LH0/t;->p0:Ljava/util/Set;

    .line 13
    .line 14
    array-length p1, p2

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, p1, :cond_0

    .line 18
    .line 19
    aget v2, p2, v1

    .line 20
    .line 21
    iget-object v3, p0, LH0/t;->p0:Ljava/util/Set;

    .line 22
    .line 23
    iget-object v4, p0, LH0/t;->o0:LO0/Z;

    .line 24
    .line 25
    invoke-virtual {v4, v2}, LO0/Z;->a(I)Lm0/g0;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput v0, p0, LH0/t;->r0:I

    .line 36
    .line 37
    iget-object p1, p0, LH0/t;->X:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object p2, p0, LH0/t;->I:LD0/U;

    .line 40
    .line 41
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    new-instance v0, LH0/q;

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    invoke-direct {v0, p2, v1}, LH0/q;-><init>(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, LH0/t;->j0:Z

    .line 55
    .line 56
    return-void
.end method

.method public final I()V
    .locals 6

    .line 1
    iget-object v0, p0, LH0/t;->b0:[LH0/s;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    iget-boolean v5, p0, LH0/t;->x0:Z

    .line 11
    .line 12
    invoke-virtual {v4, v5}, LO0/T;->E(Z)V

    .line 13
    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v2, p0, LH0/t;->x0:Z

    .line 19
    .line 20
    return-void
.end method

.method public final J(JZ)Z
    .locals 12

    .line 1
    iput-wide p1, p0, LH0/t;->v0:J

    .line 2
    .line 3
    invoke-virtual {p0}, LH0/t;->E()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-wide p1, p0, LH0/t;->w0:J

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, LH0/t;->J:LH0/j;

    .line 14
    .line 15
    iget-boolean v0, v0, LH0/j;->r:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iget-object v3, p0, LH0/t;->T:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-ge v0, v5, :cond_2

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, LH0/l;

    .line 35
    .line 36
    iget-wide v6, v5, LP0/f;->M:J

    .line 37
    .line 38
    cmp-long v8, v6, p1

    .line 39
    .line 40
    if-nez v8, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move-object v5, v2

    .line 47
    :goto_1
    iget-boolean v0, p0, LH0/t;->i0:Z

    .line 48
    .line 49
    if-eqz v0, :cond_8

    .line 50
    .line 51
    if-nez p3, :cond_8

    .line 52
    .line 53
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-nez p3, :cond_8

    .line 58
    .line 59
    iget-object p3, p0, LH0/t;->b0:[LH0/s;

    .line 60
    .line 61
    array-length p3, p3

    .line 62
    const/4 v0, 0x0

    .line 63
    :goto_2
    if-ge v0, p3, :cond_7

    .line 64
    .line 65
    iget-object v6, p0, LH0/t;->b0:[LH0/s;

    .line 66
    .line 67
    aget-object v6, v6, v0

    .line 68
    .line 69
    if-eqz v5, :cond_3

    .line 70
    .line 71
    invoke-virtual {v5, v0}, LH0/l;->e(I)I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    invoke-virtual {v6, v7}, LO0/T;->G(I)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    goto :goto_5

    .line 80
    :cond_3
    invoke-virtual {p0}, LH0/t;->e()J

    .line 81
    .line 82
    .line 83
    move-result-wide v7

    .line 84
    const-wide/high16 v9, -0x8000000000000000L

    .line 85
    .line 86
    cmp-long v11, v7, v9

    .line 87
    .line 88
    if-eqz v11, :cond_5

    .line 89
    .line 90
    cmp-long v9, p1, v7

    .line 91
    .line 92
    if-gez v9, :cond_4

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    const/4 v7, 0x0

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    :goto_3
    const/4 v7, 0x1

    .line 98
    :goto_4
    invoke-virtual {v6, p1, p2, v7}, LO0/T;->H(JZ)Z

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    :goto_5
    if-nez v6, :cond_6

    .line 103
    .line 104
    iget-object v6, p0, LH0/t;->u0:[Z

    .line 105
    .line 106
    aget-boolean v6, v6, v0

    .line 107
    .line 108
    if-nez v6, :cond_8

    .line 109
    .line 110
    iget-boolean v6, p0, LH0/t;->s0:Z

    .line 111
    .line 112
    if-nez v6, :cond_6

    .line 113
    .line 114
    goto :goto_6

    .line 115
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_7
    return v4

    .line 119
    :cond_8
    :goto_6
    iput-wide p1, p0, LH0/t;->w0:J

    .line 120
    .line 121
    iput-boolean v4, p0, LH0/t;->z0:Z

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, LH0/t;->P:LS0/m;

    .line 127
    .line 128
    invoke-virtual {p1}, LS0/m;->e()Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_a

    .line 133
    .line 134
    iget-boolean p2, p0, LH0/t;->i0:Z

    .line 135
    .line 136
    if-eqz p2, :cond_9

    .line 137
    .line 138
    iget-object p2, p0, LH0/t;->b0:[LH0/s;

    .line 139
    .line 140
    array-length p3, p2

    .line 141
    :goto_7
    if-ge v4, p3, :cond_9

    .line 142
    .line 143
    aget-object v0, p2, v4

    .line 144
    .line 145
    invoke-virtual {v0}, LO0/T;->k()V

    .line 146
    .line 147
    .line 148
    add-int/lit8 v4, v4, 0x1

    .line 149
    .line 150
    goto :goto_7

    .line 151
    :cond_9
    invoke-virtual {p1}, LS0/m;->a()V

    .line 152
    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_a
    iput-object v2, p1, LS0/m;->I:Ljava/io/IOException;

    .line 156
    .line 157
    invoke-virtual {p0}, LH0/t;->I()V

    .line 158
    .line 159
    .line 160
    :goto_8
    return v1
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, LH0/t;->X:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, LH0/t;->V:LH0/q;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(LS0/j;JJZ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    check-cast v1, LP0/f;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, LH0/t;->a0:LP0/f;

    .line 7
    .line 8
    new-instance v4, LO0/p;

    .line 9
    .line 10
    iget-wide v2, v1, LP0/f;->G:J

    .line 11
    .line 12
    iget-object v2, v1, LP0/f;->O:Ls0/M;

    .line 13
    .line 14
    iget-object v3, v2, Ls0/M;->c:Landroid/net/Uri;

    .line 15
    .line 16
    iget-object v2, v2, Ls0/M;->d:Ljava/util/Map;

    .line 17
    .line 18
    move-wide/from16 v5, p4

    .line 19
    .line 20
    invoke-direct {v4, v2, v5, v6}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 21
    .line 22
    .line 23
    iget-object v2, v0, LH0/t;->O:LU4/b;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-wide v10, v1, LP0/f;->M:J

    .line 29
    .line 30
    iget-wide v12, v1, LP0/f;->N:J

    .line 31
    .line 32
    iget-object v3, v0, LH0/t;->Q:LO0/D;

    .line 33
    .line 34
    iget v5, v1, LP0/f;->I:I

    .line 35
    .line 36
    iget v6, v0, LH0/t;->H:I

    .line 37
    .line 38
    iget-object v7, v1, LP0/f;->J:Lm0/t;

    .line 39
    .line 40
    iget v8, v1, LP0/f;->K:I

    .line 41
    .line 42
    iget-object v9, v1, LP0/f;->L:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-virtual/range {v3 .. v13}, LO0/D;->c(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 45
    .line 46
    .line 47
    if-nez p6, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0}, LH0/t;->E()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_0

    .line 54
    .line 55
    iget v1, v0, LH0/t;->k0:I

    .line 56
    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    :cond_0
    invoke-virtual {p0}, LH0/t;->I()V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget v1, v0, LH0/t;->k0:I

    .line 63
    .line 64
    if-lez v1, :cond_2

    .line 65
    .line 66
    iget-object v1, v0, LH0/t;->I:LD0/U;

    .line 67
    .line 68
    invoke-virtual {v1, p0}, LD0/U;->r(LO0/W;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, LH0/t;->b0:[LH0/s;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-virtual {v3, v4}, LO0/T;->E(Z)V

    .line 11
    .line 12
    .line 13
    iget-object v4, v3, LO0/T;->h:LG0/l;

    .line 14
    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    iget-object v5, v3, LO0/T;->e:LG0/o;

    .line 18
    .line 19
    invoke-interface {v4, v5}, LG0/l;->c(LG0/o;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    iput-object v4, v3, LO0/T;->h:LG0/l;

    .line 24
    .line 25
    iput-object v4, v3, LO0/T;->g:Lm0/t;

    .line 26
    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-void
.end method

.method public final e()J
    .locals 2

    .line 1
    invoke-virtual {p0}, LH0/t;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v0, p0, LH0/t;->w0:J

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, LH0/t;->z0:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-wide/high16 v0, -0x8000000000000000L

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, LH0/t;->C()LH0/l;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-wide v0, v0, LP0/f;->N:J

    .line 22
    .line 23
    :goto_0
    return-wide v0
.end method

.method public final f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LH0/t;->j0:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LH0/t;->o0:LO0/Z;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, LH0/t;->p0:Ljava/util/Set;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final g(LB0/d0;)Z
    .locals 63

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, LH0/t;->z0:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, LH0/t;->P:LS0/m;

    .line 9
    .line 10
    invoke-virtual {v1}, LS0/m;->e()Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, LS0/m;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    :cond_0
    move-object v1, v0

    .line 23
    const/4 v0, 0x0

    .line 24
    goto/16 :goto_38

    .line 25
    .line 26
    :cond_1
    invoke-virtual/range {p0 .. p0}, LH0/t;->E()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    iget-wide v6, v0, LH0/t;->w0:J

    .line 42
    .line 43
    iget-object v8, v0, LH0/t;->b0:[LH0/s;

    .line 44
    .line 45
    array-length v9, v8

    .line 46
    const/4 v10, 0x0

    .line 47
    :goto_0
    if-ge v10, v9, :cond_2

    .line 48
    .line 49
    aget-object v11, v8, v10

    .line 50
    .line 51
    iget-wide v12, v0, LH0/t;->w0:J

    .line 52
    .line 53
    iput-wide v12, v11, LO0/T;->t:J

    .line 54
    .line 55
    add-int/lit8 v10, v10, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    move-object/from16 v18, v3

    .line 59
    .line 60
    move-wide v10, v6

    .line 61
    move-wide/from16 v20, v10

    .line 62
    .line 63
    goto :goto_5

    .line 64
    :cond_3
    invoke-virtual/range {p0 .. p0}, LH0/t;->C()LH0/l;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-boolean v6, v3, LH0/l;->o0:Z

    .line 69
    .line 70
    iget-wide v7, v3, LP0/f;->M:J

    .line 71
    .line 72
    if-eqz v6, :cond_6

    .line 73
    .line 74
    invoke-virtual {v3}, LH0/l;->f()Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-nez v6, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    iget-wide v9, v3, LH0/l;->r0:J

    .line 82
    .line 83
    cmp-long v3, v9, v4

    .line 84
    .line 85
    if-eqz v3, :cond_5

    .line 86
    .line 87
    add-long/2addr v7, v9

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    move-wide v7, v4

    .line 90
    :goto_1
    move-wide v6, v7

    .line 91
    goto :goto_3

    .line 92
    :cond_6
    :goto_2
    iget-wide v9, v0, LH0/t;->v0:J

    .line 93
    .line 94
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    :goto_3
    iget-wide v8, v0, LH0/t;->v0:J

    .line 99
    .line 100
    iget-boolean v3, v0, LH0/t;->i0:Z

    .line 101
    .line 102
    iget-object v10, v0, LH0/t;->U:Ljava/util/List;

    .line 103
    .line 104
    if-eqz v3, :cond_7

    .line 105
    .line 106
    iget-object v3, v0, LH0/t;->b0:[LH0/s;

    .line 107
    .line 108
    array-length v11, v3

    .line 109
    const/4 v12, 0x0

    .line 110
    :goto_4
    if-ge v12, v11, :cond_7

    .line 111
    .line 112
    aget-object v13, v3, v12

    .line 113
    .line 114
    invoke-virtual {v13}, LO0/T;->r()J

    .line 115
    .line 116
    .line 117
    move-result-wide v13

    .line 118
    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->max(JJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v8

    .line 122
    add-int/lit8 v12, v12, 0x1

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_7
    move-wide/from16 v20, v8

    .line 126
    .line 127
    move-object/from16 v18, v10

    .line 128
    .line 129
    move-wide v10, v6

    .line 130
    :goto_5
    iget-object v3, v0, LH0/t;->S:LJ2/t;

    .line 131
    .line 132
    const/4 v12, 0x0

    .line 133
    iput-object v12, v3, LJ2/t;->I:Ljava/lang/Object;

    .line 134
    .line 135
    iput-boolean v2, v3, LJ2/t;->H:Z

    .line 136
    .line 137
    iput-object v12, v3, LJ2/t;->J:Ljava/lang/Object;

    .line 138
    .line 139
    iget-boolean v6, v0, LH0/t;->j0:Z

    .line 140
    .line 141
    if-nez v6, :cond_9

    .line 142
    .line 143
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-nez v6, :cond_8

    .line 148
    .line 149
    goto :goto_6

    .line 150
    :cond_8
    const/16 v22, 0x0

    .line 151
    .line 152
    goto :goto_7

    .line 153
    :cond_9
    :goto_6
    const/16 v22, 0x1

    .line 154
    .line 155
    :goto_7
    iget-object v8, v0, LH0/t;->J:LH0/j;

    .line 156
    .line 157
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_a

    .line 165
    .line 166
    move-object v7, v12

    .line 167
    goto :goto_8

    .line 168
    :cond_a
    invoke-static/range {v18 .. v18}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    check-cast v6, LH0/l;

    .line 173
    .line 174
    move-object v7, v6

    .line 175
    :goto_8
    if-nez v7, :cond_b

    .line 176
    .line 177
    move-object/from16 v13, p1

    .line 178
    .line 179
    const/4 v14, -0x1

    .line 180
    goto :goto_9

    .line 181
    :cond_b
    iget-object v13, v8, LH0/j;->h:Lm0/g0;

    .line 182
    .line 183
    iget-object v14, v7, LP0/f;->J:Lm0/t;

    .line 184
    .line 185
    invoke-virtual {v13, v14}, Lm0/g0;->b(Lm0/t;)I

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    move v14, v13

    .line 190
    move-object/from16 v13, p1

    .line 191
    .line 192
    :goto_9
    iget-wide v12, v13, LB0/d0;->a:J

    .line 193
    .line 194
    sub-long v15, v10, v12

    .line 195
    .line 196
    move-object/from16 v24, v3

    .line 197
    .line 198
    iget-wide v2, v8, LH0/j;->t:J

    .line 199
    .line 200
    cmp-long v17, v2, v4

    .line 201
    .line 202
    if-eqz v17, :cond_c

    .line 203
    .line 204
    sub-long/2addr v2, v12

    .line 205
    goto :goto_a

    .line 206
    :cond_c
    move-wide v2, v4

    .line 207
    :goto_a
    if-eqz v7, :cond_e

    .line 208
    .line 209
    iget-boolean v12, v8, LH0/j;->r:Z

    .line 210
    .line 211
    if-nez v12, :cond_e

    .line 212
    .line 213
    iget-wide v12, v7, LP0/f;->N:J

    .line 214
    .line 215
    move-wide/from16 v25, v10

    .line 216
    .line 217
    iget-wide v9, v7, LP0/f;->M:J

    .line 218
    .line 219
    sub-long/2addr v12, v9

    .line 220
    sub-long v9, v15, v12

    .line 221
    .line 222
    move-object/from16 v27, v7

    .line 223
    .line 224
    const-wide/16 v6, 0x0

    .line 225
    .line 226
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 227
    .line 228
    .line 229
    move-result-wide v9

    .line 230
    cmp-long v15, v2, v4

    .line 231
    .line 232
    if-eqz v15, :cond_d

    .line 233
    .line 234
    sub-long/2addr v2, v12

    .line 235
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 236
    .line 237
    .line 238
    move-result-wide v2

    .line 239
    :cond_d
    move-wide/from16 v16, v2

    .line 240
    .line 241
    move-wide/from16 v2, v25

    .line 242
    .line 243
    move-object/from16 v12, v27

    .line 244
    .line 245
    goto :goto_b

    .line 246
    :cond_e
    move-object/from16 v27, v7

    .line 247
    .line 248
    move-wide/from16 v25, v10

    .line 249
    .line 250
    move-wide v9, v15

    .line 251
    move-object/from16 v12, v27

    .line 252
    .line 253
    move-wide/from16 v16, v2

    .line 254
    .line 255
    move-wide/from16 v2, v25

    .line 256
    .line 257
    :goto_b
    invoke-virtual {v8, v2, v3, v12}, LH0/j;->a(JLH0/l;)[LP0/q;

    .line 258
    .line 259
    .line 260
    move-result-object v19

    .line 261
    iget-object v13, v8, LH0/j;->s:LR0/t;

    .line 262
    .line 263
    move v7, v14

    .line 264
    move-wide v14, v9

    .line 265
    invoke-interface/range {v13 .. v19}, LR0/t;->a(JJLjava/util/List;[LP0/q;)V

    .line 266
    .line 267
    .line 268
    iget-object v6, v8, LH0/j;->s:LR0/t;

    .line 269
    .line 270
    check-cast v6, LR0/c;

    .line 271
    .line 272
    iget-object v9, v6, LR0/c;->c:[I

    .line 273
    .line 274
    invoke-interface {v6}, LR0/t;->b()I

    .line 275
    .line 276
    .line 277
    move-result v6

    .line 278
    aget v14, v9, v6

    .line 279
    .line 280
    if-eq v7, v14, :cond_f

    .line 281
    .line 282
    const/4 v15, 0x1

    .line 283
    goto :goto_c

    .line 284
    :cond_f
    const/4 v15, 0x0

    .line 285
    :goto_c
    iget-object v13, v8, LH0/j;->e:[Landroid/net/Uri;

    .line 286
    .line 287
    aget-object v10, v13, v14

    .line 288
    .line 289
    iget-object v6, v8, LH0/j;->g:LI0/w;

    .line 290
    .line 291
    move-object v9, v6

    .line 292
    check-cast v9, LI0/c;

    .line 293
    .line 294
    invoke-virtual {v9, v10}, LI0/c;->d(Landroid/net/Uri;)Z

    .line 295
    .line 296
    .line 297
    move-result v6

    .line 298
    if-nez v6, :cond_10

    .line 299
    .line 300
    move-object/from16 v6, v24

    .line 301
    .line 302
    iput-object v10, v6, LJ2/t;->J:Ljava/lang/Object;

    .line 303
    .line 304
    iput-object v10, v8, LH0/j;->q:Landroid/net/Uri;

    .line 305
    .line 306
    move-object/from16 v24, v1

    .line 307
    .line 308
    :goto_d
    move-object v0, v6

    .line 309
    goto/16 :goto_32

    .line 310
    .line 311
    :cond_10
    move-object/from16 v6, v24

    .line 312
    .line 313
    const/4 v11, 0x1

    .line 314
    invoke-virtual {v9, v10, v11}, LI0/c;->a(Landroid/net/Uri;Z)LI0/l;

    .line 315
    .line 316
    .line 317
    move-result-object v4

    .line 318
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 319
    .line 320
    .line 321
    iget-boolean v5, v4, LI0/p;->c:Z

    .line 322
    .line 323
    iput-boolean v5, v8, LH0/j;->r:Z

    .line 324
    .line 325
    iget-boolean v5, v4, LI0/l;->o:Z

    .line 326
    .line 327
    move-object/from16 v27, v12

    .line 328
    .line 329
    iget-wide v11, v4, LI0/l;->h:J

    .line 330
    .line 331
    if-eqz v5, :cond_11

    .line 332
    .line 333
    move-wide/from16 v25, v2

    .line 334
    .line 335
    move-object/from16 v24, v6

    .line 336
    .line 337
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    goto :goto_e

    .line 343
    :cond_11
    move-wide/from16 v25, v2

    .line 344
    .line 345
    iget-wide v2, v4, LI0/l;->u:J

    .line 346
    .line 347
    add-long/2addr v2, v11

    .line 348
    move-object/from16 v24, v6

    .line 349
    .line 350
    iget-wide v5, v9, LI0/c;->T:J

    .line 351
    .line 352
    sub-long/2addr v2, v5

    .line 353
    :goto_e
    iput-wide v2, v8, LH0/j;->t:J

    .line 354
    .line 355
    iget-wide v2, v9, LI0/c;->T:J

    .line 356
    .line 357
    sub-long v2, v11, v2

    .line 358
    .line 359
    move-object/from16 v5, v24

    .line 360
    .line 361
    const/4 v12, -0x1

    .line 362
    move-object v6, v8

    .line 363
    move/from16 p1, v14

    .line 364
    .line 365
    move-object/from16 v11, v27

    .line 366
    .line 367
    move v14, v7

    .line 368
    move-object v7, v11

    .line 369
    move-object/from16 v19, v8

    .line 370
    .line 371
    move v8, v15

    .line 372
    move-object/from16 v24, v1

    .line 373
    .line 374
    move-object v0, v9

    .line 375
    const/4 v1, 0x1

    .line 376
    move-object v9, v4

    .line 377
    move-object/from16 v18, v10

    .line 378
    .line 379
    move-object v1, v11

    .line 380
    move-wide v10, v2

    .line 381
    move-object/from16 v23, v5

    .line 382
    .line 383
    move-object/from16 v28, v13

    .line 384
    .line 385
    const/4 v5, -0x1

    .line 386
    move-wide/from16 v12, v25

    .line 387
    .line 388
    invoke-virtual/range {v6 .. v13}, LH0/j;->c(LH0/l;ZLI0/l;JJ)Landroid/util/Pair;

    .line 389
    .line 390
    .line 391
    move-result-object v6

    .line 392
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 393
    .line 394
    check-cast v7, Ljava/lang/Long;

    .line 395
    .line 396
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 397
    .line 398
    .line 399
    move-result-wide v7

    .line 400
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v6, Ljava/lang/Integer;

    .line 403
    .line 404
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 405
    .line 406
    .line 407
    move-result v6

    .line 408
    if-nez v15, :cond_12

    .line 409
    .line 410
    goto :goto_10

    .line 411
    :cond_12
    if-nez v1, :cond_13

    .line 412
    .line 413
    goto :goto_10

    .line 414
    :cond_13
    iget-wide v9, v4, LI0/l;->k:J

    .line 415
    .line 416
    cmp-long v11, v7, v9

    .line 417
    .line 418
    if-gez v11, :cond_14

    .line 419
    .line 420
    goto :goto_f

    .line 421
    :cond_14
    invoke-static {v4, v7, v8, v6}, LH0/j;->d(LI0/l;JI)LH0/i;

    .line 422
    .line 423
    .line 424
    move-result-object v9

    .line 425
    if-nez v9, :cond_15

    .line 426
    .line 427
    goto :goto_10

    .line 428
    :cond_15
    iget-object v9, v9, LH0/i;->d:Ljava/lang/Object;

    .line 429
    .line 430
    check-cast v9, LI0/j;

    .line 431
    .line 432
    iget-wide v9, v9, LI0/j;->K:J

    .line 433
    .line 434
    add-long/2addr v9, v2

    .line 435
    cmp-long v11, v9, v20

    .line 436
    .line 437
    if-gez v11, :cond_16

    .line 438
    .line 439
    :goto_f
    aget-object v2, v28, v14

    .line 440
    .line 441
    const/4 v3, 0x1

    .line 442
    invoke-virtual {v0, v2, v3}, LI0/c;->a(Landroid/net/Uri;Z)LI0/l;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    .line 448
    .line 449
    iget-wide v6, v0, LI0/c;->T:J

    .line 450
    .line 451
    iget-wide v8, v4, LI0/l;->h:J

    .line 452
    .line 453
    sub-long v20, v8, v6

    .line 454
    .line 455
    const/4 v8, 0x0

    .line 456
    move-object/from16 v6, v19

    .line 457
    .line 458
    move-object v7, v1

    .line 459
    move-object v9, v4

    .line 460
    move-wide/from16 v10, v20

    .line 461
    .line 462
    move-wide/from16 v12, v25

    .line 463
    .line 464
    invoke-virtual/range {v6 .. v13}, LH0/j;->c(LH0/l;ZLI0/l;JJ)Landroid/util/Pair;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 469
    .line 470
    check-cast v6, Ljava/lang/Long;

    .line 471
    .line 472
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 473
    .line 474
    .line 475
    move-result-wide v7

    .line 476
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 477
    .line 478
    check-cast v3, Ljava/lang/Integer;

    .line 479
    .line 480
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 481
    .line 482
    .line 483
    move-result v6

    .line 484
    move-object v9, v2

    .line 485
    move v10, v14

    .line 486
    move-wide/from16 v2, v20

    .line 487
    .line 488
    goto :goto_11

    .line 489
    :cond_16
    :goto_10
    move/from16 v10, p1

    .line 490
    .line 491
    move-object/from16 v9, v18

    .line 492
    .line 493
    :goto_11
    if-eq v10, v14, :cond_17

    .line 494
    .line 495
    if-eq v14, v5, :cond_17

    .line 496
    .line 497
    aget-object v11, v28, v14

    .line 498
    .line 499
    iget-object v0, v0, LI0/c;->J:Ljava/util/HashMap;

    .line 500
    .line 501
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    check-cast v0, LI0/b;

    .line 506
    .line 507
    if-eqz v0, :cond_17

    .line 508
    .line 509
    const/4 v11, 0x0

    .line 510
    iput-boolean v11, v0, LI0/b;->Q:Z

    .line 511
    .line 512
    :cond_17
    iget-wide v11, v4, LI0/l;->k:J

    .line 513
    .line 514
    cmp-long v0, v7, v11

    .line 515
    .line 516
    if-gez v0, :cond_18

    .line 517
    .line 518
    new-instance v0, LO0/b;

    .line 519
    .line 520
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 521
    .line 522
    .line 523
    move-object/from16 v13, v19

    .line 524
    .line 525
    iput-object v0, v13, LH0/j;->o:LO0/b;

    .line 526
    .line 527
    move-object/from16 v0, v23

    .line 528
    .line 529
    goto/16 :goto_32

    .line 530
    .line 531
    :cond_18
    move-object/from16 v13, v19

    .line 532
    .line 533
    invoke-static {v4, v7, v8, v6}, LH0/j;->d(LI0/l;JI)LH0/i;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    if-nez v0, :cond_1c

    .line 538
    .line 539
    iget-boolean v0, v4, LI0/l;->o:Z

    .line 540
    .line 541
    if-nez v0, :cond_19

    .line 542
    .line 543
    move-object/from16 v6, v23

    .line 544
    .line 545
    iput-object v9, v6, LJ2/t;->J:Ljava/lang/Object;

    .line 546
    .line 547
    iput-object v9, v13, LH0/j;->q:Landroid/net/Uri;

    .line 548
    .line 549
    goto/16 :goto_d

    .line 550
    .line 551
    :cond_19
    move-object/from16 v6, v23

    .line 552
    .line 553
    if-nez v22, :cond_1a

    .line 554
    .line 555
    iget-object v0, v4, LI0/l;->r:Lz4/H;

    .line 556
    .line 557
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 558
    .line 559
    .line 560
    move-result v7

    .line 561
    if-eqz v7, :cond_1b

    .line 562
    .line 563
    :cond_1a
    const/4 v0, 0x1

    .line 564
    goto :goto_13

    .line 565
    :cond_1b
    new-instance v7, LH0/i;

    .line 566
    .line 567
    invoke-static {v0}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 568
    .line 569
    .line 570
    move-result-object v8

    .line 571
    check-cast v8, LI0/j;

    .line 572
    .line 573
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    int-to-long v14, v0

    .line 578
    add-long/2addr v11, v14

    .line 579
    const-wide/16 v14, 0x1

    .line 580
    .line 581
    sub-long/2addr v11, v14

    .line 582
    invoke-direct {v7, v8, v11, v12, v5}, LH0/i;-><init>(LI0/j;JI)V

    .line 583
    .line 584
    .line 585
    move-object v0, v7

    .line 586
    :goto_12
    const/4 v5, 0x0

    .line 587
    goto :goto_14

    .line 588
    :goto_13
    iput-boolean v0, v6, LJ2/t;->H:Z

    .line 589
    .line 590
    goto/16 :goto_d

    .line 591
    .line 592
    :cond_1c
    move-object/from16 v6, v23

    .line 593
    .line 594
    goto :goto_12

    .line 595
    :goto_14
    iput-object v5, v13, LH0/j;->q:Landroid/net/Uri;

    .line 596
    .line 597
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 598
    .line 599
    .line 600
    iget-object v7, v0, LH0/i;->d:Ljava/lang/Object;

    .line 601
    .line 602
    check-cast v7, LI0/j;

    .line 603
    .line 604
    iget-object v7, v7, LI0/j;->H:LI0/i;

    .line 605
    .line 606
    iget-object v8, v4, LI0/p;->a:Ljava/lang/String;

    .line 607
    .line 608
    if-eqz v7, :cond_1e

    .line 609
    .line 610
    iget-object v7, v7, LI0/j;->M:Ljava/lang/String;

    .line 611
    .line 612
    if-nez v7, :cond_1d

    .line 613
    .line 614
    goto :goto_16

    .line 615
    :cond_1d
    invoke-static {v8, v7}, LQ3/b;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 616
    .line 617
    .line 618
    move-result-object v12

    .line 619
    :goto_15
    const/4 v7, 0x1

    .line 620
    goto :goto_17

    .line 621
    :cond_1e
    :goto_16
    move-object v12, v5

    .line 622
    goto :goto_15

    .line 623
    :goto_17
    invoke-virtual {v13, v12, v10, v7}, LH0/j;->e(Landroid/net/Uri;IZ)LH0/f;

    .line 624
    .line 625
    .line 626
    move-result-object v11

    .line 627
    iput-object v11, v6, LJ2/t;->I:Ljava/lang/Object;

    .line 628
    .line 629
    if-eqz v11, :cond_1f

    .line 630
    .line 631
    :goto_18
    goto/16 :goto_d

    .line 632
    .line 633
    :cond_1f
    iget-object v7, v0, LH0/i;->d:Ljava/lang/Object;

    .line 634
    .line 635
    check-cast v7, LI0/j;

    .line 636
    .line 637
    if-eqz v7, :cond_21

    .line 638
    .line 639
    iget-object v7, v7, LI0/j;->M:Ljava/lang/String;

    .line 640
    .line 641
    if-nez v7, :cond_20

    .line 642
    .line 643
    goto :goto_1a

    .line 644
    :cond_20
    invoke-static {v8, v7}, LQ3/b;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 645
    .line 646
    .line 647
    move-result-object v7

    .line 648
    :goto_19
    const/4 v11, 0x0

    .line 649
    goto :goto_1b

    .line 650
    :cond_21
    :goto_1a
    move-object v7, v5

    .line 651
    goto :goto_19

    .line 652
    :goto_1b
    invoke-virtual {v13, v7, v10, v11}, LH0/j;->e(Landroid/net/Uri;IZ)LH0/f;

    .line 653
    .line 654
    .line 655
    move-result-object v14

    .line 656
    iput-object v14, v6, LJ2/t;->I:Ljava/lang/Object;

    .line 657
    .line 658
    if-eqz v14, :cond_22

    .line 659
    .line 660
    goto :goto_18

    .line 661
    :cond_22
    iget-object v11, v0, LH0/i;->d:Ljava/lang/Object;

    .line 662
    .line 663
    check-cast v11, LI0/j;

    .line 664
    .line 665
    instance-of v14, v11, LI0/g;

    .line 666
    .line 667
    iget-boolean v15, v4, LI0/p;->c:Z

    .line 668
    .line 669
    if-eqz v14, :cond_25

    .line 670
    .line 671
    check-cast v11, LI0/g;

    .line 672
    .line 673
    iget-boolean v11, v11, LI0/g;->R:Z

    .line 674
    .line 675
    if-nez v11, :cond_24

    .line 676
    .line 677
    iget v11, v0, LH0/i;->b:I

    .line 678
    .line 679
    if-nez v11, :cond_23

    .line 680
    .line 681
    if-eqz v15, :cond_23

    .line 682
    .line 683
    goto :goto_1c

    .line 684
    :cond_23
    const/4 v11, 0x0

    .line 685
    goto :goto_1d

    .line 686
    :cond_24
    :goto_1c
    const/4 v11, 0x1

    .line 687
    :goto_1d
    move/from16 v61, v11

    .line 688
    .line 689
    goto :goto_1e

    .line 690
    :cond_25
    move/from16 v61, v15

    .line 691
    .line 692
    :goto_1e
    if-nez v1, :cond_26

    .line 693
    .line 694
    sget-object v11, LH0/l;->t0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 695
    .line 696
    :goto_1f
    const/16 v60, 0x0

    .line 697
    .line 698
    goto :goto_22

    .line 699
    :cond_26
    iget-object v11, v1, LH0/l;->S:Landroid/net/Uri;

    .line 700
    .line 701
    invoke-virtual {v9, v11}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result v11

    .line 705
    if-eqz v11, :cond_27

    .line 706
    .line 707
    iget-boolean v11, v1, LH0/l;->o0:Z

    .line 708
    .line 709
    if-eqz v11, :cond_27

    .line 710
    .line 711
    goto :goto_1f

    .line 712
    :cond_27
    iget-object v11, v0, LH0/i;->d:Ljava/lang/Object;

    .line 713
    .line 714
    check-cast v11, LI0/j;

    .line 715
    .line 716
    iget-wide v14, v11, LI0/j;->K:J

    .line 717
    .line 718
    add-long/2addr v14, v2

    .line 719
    if-eqz v61, :cond_29

    .line 720
    .line 721
    cmp-long v11, v14, v25

    .line 722
    .line 723
    if-gez v11, :cond_28

    .line 724
    .line 725
    goto :goto_20

    .line 726
    :cond_28
    const/4 v11, 0x0

    .line 727
    goto :goto_21

    .line 728
    :cond_29
    :goto_20
    const/4 v11, 0x1

    .line 729
    :goto_21
    move/from16 v60, v11

    .line 730
    .line 731
    :goto_22
    iget-boolean v11, v0, LH0/i;->c:Z

    .line 732
    .line 733
    if-eqz v60, :cond_2a

    .line 734
    .line 735
    if-eqz v11, :cond_2a

    .line 736
    .line 737
    goto :goto_18

    .line 738
    :cond_2a
    iget-object v14, v13, LH0/j;->f:[Lm0/t;

    .line 739
    .line 740
    aget-object v33, v14, v10

    .line 741
    .line 742
    iget-object v10, v13, LH0/j;->s:LR0/t;

    .line 743
    .line 744
    invoke-interface {v10}, LR0/t;->f()I

    .line 745
    .line 746
    .line 747
    move-result v40

    .line 748
    iget-object v10, v13, LH0/j;->s:LR0/t;

    .line 749
    .line 750
    invoke-interface {v10}, LR0/t;->h()Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v41

    .line 754
    iget-boolean v10, v13, LH0/j;->m:Z

    .line 755
    .line 756
    iget-object v14, v13, LH0/j;->j:Ls/b;

    .line 757
    .line 758
    if-nez v7, :cond_2b

    .line 759
    .line 760
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    .line 762
    .line 763
    move-object v7, v5

    .line 764
    goto :goto_23

    .line 765
    :cond_2b
    iget-object v15, v14, Ls/b;->a:Ljava/util/LinkedHashMap;

    .line 766
    .line 767
    invoke-virtual {v15, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    .line 769
    .line 770
    move-result-object v7

    .line 771
    check-cast v7, [B

    .line 772
    .line 773
    :goto_23
    if-nez v12, :cond_2c

    .line 774
    .line 775
    move-object v12, v5

    .line 776
    goto :goto_24

    .line 777
    :cond_2c
    iget-object v14, v14, Ls/b;->a:Ljava/util/LinkedHashMap;

    .line 778
    .line 779
    invoke-virtual {v14, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v12

    .line 783
    check-cast v12, [B

    .line 784
    .line 785
    :goto_24
    sget-object v14, LH0/l;->t0:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 786
    .line 787
    iget-object v14, v0, LH0/i;->d:Ljava/lang/Object;

    .line 788
    .line 789
    check-cast v14, LI0/j;

    .line 790
    .line 791
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 792
    .line 793
    .line 794
    move-result-object v48

    .line 795
    iget-object v15, v14, LI0/j;->G:Ljava/lang/String;

    .line 796
    .line 797
    invoke-static {v8, v15}, LQ3/b;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 798
    .line 799
    .line 800
    move-result-object v15

    .line 801
    if-eqz v11, :cond_2d

    .line 802
    .line 803
    const/16 v18, 0x8

    .line 804
    .line 805
    const/16 v54, 0x8

    .line 806
    .line 807
    goto :goto_25

    .line 808
    :cond_2d
    const/16 v54, 0x0

    .line 809
    .line 810
    :goto_25
    const-string v5, "The uri must be set."

    .line 811
    .line 812
    invoke-static {v15, v5}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    new-instance v32, Ls0/m;

    .line 816
    .line 817
    const/16 v53, 0x0

    .line 818
    .line 819
    const/16 v55, 0x0

    .line 820
    .line 821
    const-wide/16 v44, 0x0

    .line 822
    .line 823
    const/16 v46, 0x1

    .line 824
    .line 825
    const/16 v47, 0x0

    .line 826
    .line 827
    move/from16 v19, v10

    .line 828
    .line 829
    move/from16 v18, v11

    .line 830
    .line 831
    iget-wide v10, v14, LI0/j;->O:J

    .line 832
    .line 833
    move-object/from16 v20, v0

    .line 834
    .line 835
    move-object/from16 p1, v1

    .line 836
    .line 837
    iget-wide v0, v14, LI0/j;->P:J

    .line 838
    .line 839
    move-object/from16 v42, v32

    .line 840
    .line 841
    move-object/from16 v43, v15

    .line 842
    .line 843
    move-wide/from16 v49, v10

    .line 844
    .line 845
    move-wide/from16 v51, v0

    .line 846
    .line 847
    invoke-direct/range {v42 .. v55}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 848
    .line 849
    .line 850
    if-eqz v7, :cond_2e

    .line 851
    .line 852
    const/16 v34, 0x1

    .line 853
    .line 854
    goto :goto_26

    .line 855
    :cond_2e
    const/16 v34, 0x0

    .line 856
    .line 857
    :goto_26
    if-eqz v34, :cond_2f

    .line 858
    .line 859
    iget-object v0, v14, LI0/j;->N:Ljava/lang/String;

    .line 860
    .line 861
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 862
    .line 863
    .line 864
    invoke-static {v0}, LH0/l;->d(Ljava/lang/String;)[B

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    goto :goto_27

    .line 869
    :cond_2f
    const/4 v0, 0x0

    .line 870
    :goto_27
    iget-object v1, v13, LH0/j;->b:Ls0/i;

    .line 871
    .line 872
    if-eqz v7, :cond_30

    .line 873
    .line 874
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 875
    .line 876
    .line 877
    new-instance v10, LH0/a;

    .line 878
    .line 879
    invoke-direct {v10, v1, v7, v0}, LH0/a;-><init>(Ls0/i;[B[B)V

    .line 880
    .line 881
    .line 882
    move-object/from16 v31, v10

    .line 883
    .line 884
    goto :goto_28

    .line 885
    :cond_30
    move-object/from16 v31, v1

    .line 886
    .line 887
    :goto_28
    iget-object v0, v14, LI0/j;->H:LI0/i;

    .line 888
    .line 889
    if-eqz v0, :cond_34

    .line 890
    .line 891
    if-eqz v12, :cond_31

    .line 892
    .line 893
    const/4 v7, 0x1

    .line 894
    goto :goto_29

    .line 895
    :cond_31
    const/4 v7, 0x0

    .line 896
    :goto_29
    if-eqz v7, :cond_32

    .line 897
    .line 898
    iget-object v10, v0, LI0/j;->N:Ljava/lang/String;

    .line 899
    .line 900
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 901
    .line 902
    .line 903
    invoke-static {v10}, LH0/l;->d(Ljava/lang/String;)[B

    .line 904
    .line 905
    .line 906
    move-result-object v10

    .line 907
    goto :goto_2a

    .line 908
    :cond_32
    const/4 v10, 0x0

    .line 909
    :goto_2a
    iget-object v11, v0, LI0/j;->G:Ljava/lang/String;

    .line 910
    .line 911
    invoke-static {v8, v11}, LQ3/b;->w(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 912
    .line 913
    .line 914
    move-result-object v8

    .line 915
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 916
    .line 917
    .line 918
    move-result-object v48

    .line 919
    invoke-static {v8, v5}, Lcom/google/android/gms/internal/measurement/H1;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 920
    .line 921
    .line 922
    new-instance v5, Ls0/m;

    .line 923
    .line 924
    const/16 v54, 0x0

    .line 925
    .line 926
    const/16 v55, 0x0

    .line 927
    .line 928
    const-wide/16 v44, 0x0

    .line 929
    .line 930
    const/16 v46, 0x1

    .line 931
    .line 932
    const/16 v47, 0x0

    .line 933
    .line 934
    move-object/from16 v23, v6

    .line 935
    .line 936
    move v11, v7

    .line 937
    iget-wide v6, v0, LI0/j;->O:J

    .line 938
    .line 939
    move-wide/from16 v21, v2

    .line 940
    .line 941
    iget-wide v2, v0, LI0/j;->P:J

    .line 942
    .line 943
    const/16 v53, 0x0

    .line 944
    .line 945
    move-object/from16 v42, v5

    .line 946
    .line 947
    move-object/from16 v43, v8

    .line 948
    .line 949
    move-wide/from16 v49, v6

    .line 950
    .line 951
    move-wide/from16 v51, v2

    .line 952
    .line 953
    invoke-direct/range {v42 .. v55}, Ls0/m;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    .line 954
    .line 955
    .line 956
    if-eqz v12, :cond_33

    .line 957
    .line 958
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 959
    .line 960
    .line 961
    new-instance v0, LH0/a;

    .line 962
    .line 963
    invoke-direct {v0, v1, v12, v10}, LH0/a;-><init>(Ls0/i;[B[B)V

    .line 964
    .line 965
    .line 966
    move-object v12, v0

    .line 967
    goto :goto_2b

    .line 968
    :cond_33
    move-object v12, v1

    .line 969
    :goto_2b
    move/from16 v37, v11

    .line 970
    .line 971
    move-object/from16 v35, v12

    .line 972
    .line 973
    goto :goto_2c

    .line 974
    :cond_34
    move-wide/from16 v21, v2

    .line 975
    .line 976
    move-object/from16 v23, v6

    .line 977
    .line 978
    const/4 v5, 0x0

    .line 979
    const/16 v35, 0x0

    .line 980
    .line 981
    const/16 v37, 0x0

    .line 982
    .line 983
    :goto_2c
    iget-wide v0, v14, LI0/j;->K:J

    .line 984
    .line 985
    add-long v42, v21, v0

    .line 986
    .line 987
    iget-wide v0, v14, LI0/j;->I:J

    .line 988
    .line 989
    add-long v44, v42, v0

    .line 990
    .line 991
    iget v0, v4, LI0/l;->j:I

    .line 992
    .line 993
    iget v1, v14, LI0/j;->J:I

    .line 994
    .line 995
    add-int/2addr v0, v1

    .line 996
    if-eqz p1, :cond_39

    .line 997
    .line 998
    move-object/from16 v6, p1

    .line 999
    .line 1000
    iget-object v1, v6, LH0/l;->W:Ls0/m;

    .line 1001
    .line 1002
    if-eq v5, v1, :cond_36

    .line 1003
    .line 1004
    if-eqz v5, :cond_35

    .line 1005
    .line 1006
    if-eqz v1, :cond_35

    .line 1007
    .line 1008
    iget-object v2, v5, Ls0/m;->a:Landroid/net/Uri;

    .line 1009
    .line 1010
    iget-object v3, v1, Ls0/m;->a:Landroid/net/Uri;

    .line 1011
    .line 1012
    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1013
    .line 1014
    .line 1015
    move-result v2

    .line 1016
    if-eqz v2, :cond_35

    .line 1017
    .line 1018
    iget-wide v2, v5, Ls0/m;->f:J

    .line 1019
    .line 1020
    iget-wide v7, v1, Ls0/m;->f:J

    .line 1021
    .line 1022
    cmp-long v1, v2, v7

    .line 1023
    .line 1024
    if-nez v1, :cond_35

    .line 1025
    .line 1026
    goto :goto_2d

    .line 1027
    :cond_35
    const/4 v1, 0x0

    .line 1028
    goto :goto_2e

    .line 1029
    :cond_36
    :goto_2d
    const/4 v1, 0x1

    .line 1030
    :goto_2e
    iget-object v2, v6, LH0/l;->S:Landroid/net/Uri;

    .line 1031
    .line 1032
    invoke-virtual {v9, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 1033
    .line 1034
    .line 1035
    move-result v2

    .line 1036
    if-eqz v2, :cond_37

    .line 1037
    .line 1038
    iget-boolean v2, v6, LH0/l;->o0:Z

    .line 1039
    .line 1040
    if-eqz v2, :cond_37

    .line 1041
    .line 1042
    const/4 v2, 0x1

    .line 1043
    goto :goto_2f

    .line 1044
    :cond_37
    const/4 v2, 0x0

    .line 1045
    :goto_2f
    if-eqz v1, :cond_38

    .line 1046
    .line 1047
    if-eqz v2, :cond_38

    .line 1048
    .line 1049
    iget-boolean v1, v6, LH0/l;->q0:Z

    .line 1050
    .line 1051
    if-nez v1, :cond_38

    .line 1052
    .line 1053
    iget v1, v6, LH0/l;->R:I

    .line 1054
    .line 1055
    if-ne v1, v0, :cond_38

    .line 1056
    .line 1057
    iget-object v12, v6, LH0/l;->j0:LH0/m;

    .line 1058
    .line 1059
    goto :goto_30

    .line 1060
    :cond_38
    const/4 v12, 0x0

    .line 1061
    :goto_30
    iget-object v1, v6, LH0/l;->e0:Li1/i;

    .line 1062
    .line 1063
    iget-object v2, v6, LH0/l;->f0:Lp0/E;

    .line 1064
    .line 1065
    move-object/from16 v58, v1

    .line 1066
    .line 1067
    move-object/from16 v59, v2

    .line 1068
    .line 1069
    move-object/from16 v57, v12

    .line 1070
    .line 1071
    goto :goto_31

    .line 1072
    :cond_39
    new-instance v1, Li1/i;

    .line 1073
    .line 1074
    const/4 v2, 0x0

    .line 1075
    invoke-direct {v1, v2}, Li1/i;-><init>(LN/i;)V

    .line 1076
    .line 1077
    .line 1078
    new-instance v3, Lp0/E;

    .line 1079
    .line 1080
    const/16 v4, 0xa

    .line 1081
    .line 1082
    invoke-direct {v3, v4}, Lp0/E;-><init>(I)V

    .line 1083
    .line 1084
    .line 1085
    move-object/from16 v58, v1

    .line 1086
    .line 1087
    move-object/from16 v57, v2

    .line 1088
    .line 1089
    move-object/from16 v59, v3

    .line 1090
    .line 1091
    :goto_31
    new-instance v1, LH0/l;

    .line 1092
    .line 1093
    move-object/from16 v7, v20

    .line 1094
    .line 1095
    iget-wide v2, v7, LH0/i;->a:J

    .line 1096
    .line 1097
    iget v4, v7, LH0/i;->b:I

    .line 1098
    .line 1099
    const/4 v6, 0x1

    .line 1100
    xor-int/lit8 v49, v18, 0x1

    .line 1101
    .line 1102
    iget-object v6, v13, LH0/j;->d:LD0/U;

    .line 1103
    .line 1104
    iget-object v7, v6, LD0/U;->H:Ljava/lang/Object;

    .line 1105
    .line 1106
    check-cast v7, Landroid/util/SparseArray;

    .line 1107
    .line 1108
    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1109
    .line 1110
    .line 1111
    move-result-object v7

    .line 1112
    check-cast v7, Lp0/J;

    .line 1113
    .line 1114
    if-nez v7, :cond_3a

    .line 1115
    .line 1116
    new-instance v7, Lp0/J;

    .line 1117
    .line 1118
    const-wide v10, 0x7ffffffffffffffeL

    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    invoke-direct {v7, v10, v11}, Lp0/J;-><init>(J)V

    .line 1124
    .line 1125
    .line 1126
    iget-object v6, v6, LD0/U;->H:Ljava/lang/Object;

    .line 1127
    .line 1128
    check-cast v6, Landroid/util/SparseArray;

    .line 1129
    .line 1130
    invoke-virtual {v6, v0, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1131
    .line 1132
    .line 1133
    :cond_3a
    move-object/from16 v53, v7

    .line 1134
    .line 1135
    iget-boolean v6, v14, LI0/j;->Q:Z

    .line 1136
    .line 1137
    move/from16 v51, v6

    .line 1138
    .line 1139
    iget-object v6, v14, LI0/j;->L:Lm0/n;

    .line 1140
    .line 1141
    move-object/from16 v56, v6

    .line 1142
    .line 1143
    iget-object v6, v13, LH0/j;->a:LH0/k;

    .line 1144
    .line 1145
    move-object/from16 v30, v6

    .line 1146
    .line 1147
    iget-object v6, v13, LH0/j;->i:Ljava/util/List;

    .line 1148
    .line 1149
    move-object/from16 v39, v6

    .line 1150
    .line 1151
    iget-wide v6, v13, LH0/j;->l:J

    .line 1152
    .line 1153
    move-wide/from16 v54, v6

    .line 1154
    .line 1155
    iget-object v6, v13, LH0/j;->k:LC0/I;

    .line 1156
    .line 1157
    move-object/from16 v62, v6

    .line 1158
    .line 1159
    move-object/from16 v29, v1

    .line 1160
    .line 1161
    move-object/from16 v36, v5

    .line 1162
    .line 1163
    move-object/from16 v38, v9

    .line 1164
    .line 1165
    move-wide/from16 v46, v2

    .line 1166
    .line 1167
    move/from16 v48, v4

    .line 1168
    .line 1169
    move/from16 v50, v0

    .line 1170
    .line 1171
    move/from16 v52, v19

    .line 1172
    .line 1173
    invoke-direct/range {v29 .. v62}, LH0/l;-><init>(LH0/k;Ls0/i;Ls0/m;Lm0/t;ZLs0/i;Ls0/m;ZLandroid/net/Uri;Ljava/util/List;ILjava/lang/Object;JJJIZIZZLp0/J;JLm0/n;LH0/m;Li1/i;Lp0/E;ZZLC0/I;)V

    .line 1174
    .line 1175
    .line 1176
    move-object/from16 v0, v23

    .line 1177
    .line 1178
    iput-object v1, v0, LJ2/t;->I:Ljava/lang/Object;

    .line 1179
    .line 1180
    :goto_32
    iget-boolean v1, v0, LJ2/t;->H:Z

    .line 1181
    .line 1182
    iget-object v2, v0, LJ2/t;->I:Ljava/lang/Object;

    .line 1183
    .line 1184
    check-cast v2, LP0/f;

    .line 1185
    .line 1186
    iget-object v0, v0, LJ2/t;->J:Ljava/lang/Object;

    .line 1187
    .line 1188
    check-cast v0, Landroid/net/Uri;

    .line 1189
    .line 1190
    if-eqz v1, :cond_3b

    .line 1191
    .line 1192
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    move-object/from16 v1, p0

    .line 1198
    .line 1199
    iput-wide v3, v1, LH0/t;->w0:J

    .line 1200
    .line 1201
    const/4 v0, 0x1

    .line 1202
    iput-boolean v0, v1, LH0/t;->z0:Z

    .line 1203
    .line 1204
    return v0

    .line 1205
    :cond_3b
    move-object/from16 v1, p0

    .line 1206
    .line 1207
    if-nez v2, :cond_3d

    .line 1208
    .line 1209
    if-eqz v0, :cond_3c

    .line 1210
    .line 1211
    iget-object v2, v1, LH0/t;->I:LD0/U;

    .line 1212
    .line 1213
    iget-object v2, v2, LD0/U;->H:Ljava/lang/Object;

    .line 1214
    .line 1215
    check-cast v2, LH0/n;

    .line 1216
    .line 1217
    iget-object v2, v2, LH0/n;->H:LI0/w;

    .line 1218
    .line 1219
    check-cast v2, LI0/c;

    .line 1220
    .line 1221
    iget-object v2, v2, LI0/c;->J:Ljava/util/HashMap;

    .line 1222
    .line 1223
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v0

    .line 1227
    check-cast v0, LI0/b;

    .line 1228
    .line 1229
    const/4 v2, 0x1

    .line 1230
    invoke-virtual {v0, v2}, LI0/b;->d(Z)V

    .line 1231
    .line 1232
    .line 1233
    :cond_3c
    const/4 v0, 0x0

    .line 1234
    return v0

    .line 1235
    :cond_3d
    instance-of v0, v2, LH0/l;

    .line 1236
    .line 1237
    if-eqz v0, :cond_45

    .line 1238
    .line 1239
    move-object v0, v2

    .line 1240
    check-cast v0, LH0/l;

    .line 1241
    .line 1242
    iget-object v3, v1, LH0/t;->T:Ljava/util/ArrayList;

    .line 1243
    .line 1244
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1245
    .line 1246
    .line 1247
    move-result v4

    .line 1248
    if-eqz v4, :cond_3e

    .line 1249
    .line 1250
    goto :goto_35

    .line 1251
    :cond_3e
    invoke-virtual/range {p0 .. p0}, LH0/t;->C()LH0/l;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v4

    .line 1255
    invoke-virtual {v4}, LH0/l;->f()Z

    .line 1256
    .line 1257
    .line 1258
    move-result v4

    .line 1259
    if-nez v4, :cond_3f

    .line 1260
    .line 1261
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1262
    .line 1263
    .line 1264
    move-result v4

    .line 1265
    const/4 v5, 0x1

    .line 1266
    sub-int/2addr v4, v5

    .line 1267
    invoke-virtual {v1, v4}, LH0/t;->B(I)V

    .line 1268
    .line 1269
    .line 1270
    goto :goto_33

    .line 1271
    :cond_3f
    const/4 v5, 0x1

    .line 1272
    :goto_33
    iget-boolean v4, v0, LH0/l;->T:Z

    .line 1273
    .line 1274
    if-eqz v4, :cond_42

    .line 1275
    .line 1276
    iget-boolean v4, v0, LH0/l;->s0:Z

    .line 1277
    .line 1278
    if-eqz v4, :cond_42

    .line 1279
    .line 1280
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 1281
    .line 1282
    .line 1283
    move-result v4

    .line 1284
    sub-int/2addr v4, v5

    .line 1285
    :goto_34
    if-ltz v4, :cond_42

    .line 1286
    .line 1287
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v5

    .line 1291
    check-cast v5, LH0/l;

    .line 1292
    .line 1293
    iget-wide v5, v5, LP0/f;->M:J

    .line 1294
    .line 1295
    iget-wide v7, v0, LP0/f;->M:J

    .line 1296
    .line 1297
    cmp-long v9, v5, v7

    .line 1298
    .line 1299
    if-gez v9, :cond_40

    .line 1300
    .line 1301
    goto :goto_35

    .line 1302
    :cond_40
    if-nez v9, :cond_41

    .line 1303
    .line 1304
    invoke-virtual {v1, v4}, LH0/t;->x(I)Z

    .line 1305
    .line 1306
    .line 1307
    move-result v5

    .line 1308
    if-eqz v5, :cond_41

    .line 1309
    .line 1310
    invoke-virtual {v1, v4}, LH0/t;->B(I)V

    .line 1311
    .line 1312
    .line 1313
    const/4 v4, 0x0

    .line 1314
    iput-boolean v4, v0, LH0/l;->s0:Z

    .line 1315
    .line 1316
    goto :goto_35

    .line 1317
    :cond_41
    add-int/lit8 v4, v4, -0x1

    .line 1318
    .line 1319
    goto :goto_34

    .line 1320
    :cond_42
    :goto_35
    iput-object v0, v1, LH0/t;->D0:LH0/l;

    .line 1321
    .line 1322
    iget-object v4, v0, LP0/f;->J:Lm0/t;

    .line 1323
    .line 1324
    iput-object v4, v1, LH0/t;->l0:Lm0/t;

    .line 1325
    .line 1326
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    iput-wide v4, v1, LH0/t;->w0:J

    .line 1332
    .line 1333
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    .line 1335
    .line 1336
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v3

    .line 1340
    iget-object v4, v1, LH0/t;->b0:[LH0/s;

    .line 1341
    .line 1342
    array-length v5, v4

    .line 1343
    const/4 v11, 0x0

    .line 1344
    :goto_36
    if-ge v11, v5, :cond_43

    .line 1345
    .line 1346
    aget-object v6, v4, v11

    .line 1347
    .line 1348
    iget v7, v6, LO0/T;->q:I

    .line 1349
    .line 1350
    iget v6, v6, LO0/T;->p:I

    .line 1351
    .line 1352
    add-int/2addr v7, v6

    .line 1353
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1354
    .line 1355
    .line 1356
    move-result-object v6

    .line 1357
    invoke-virtual {v3, v6}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 1358
    .line 1359
    .line 1360
    add-int/lit8 v11, v11, 0x1

    .line 1361
    .line 1362
    goto :goto_36

    .line 1363
    :cond_43
    invoke-virtual {v3}, Lz4/E;->m0()Lz4/d0;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v3

    .line 1367
    iput-object v1, v0, LH0/l;->k0:LH0/t;

    .line 1368
    .line 1369
    iput-object v3, v0, LH0/l;->p0:Lz4/H;

    .line 1370
    .line 1371
    iget-object v3, v1, LH0/t;->b0:[LH0/s;

    .line 1372
    .line 1373
    array-length v4, v3

    .line 1374
    const/4 v5, 0x0

    .line 1375
    :goto_37
    if-ge v5, v4, :cond_45

    .line 1376
    .line 1377
    aget-object v6, v3, v5

    .line 1378
    .line 1379
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1380
    .line 1381
    .line 1382
    iget v7, v0, LH0/l;->Q:I

    .line 1383
    .line 1384
    int-to-long v7, v7

    .line 1385
    iput-wide v7, v6, LO0/T;->C:J

    .line 1386
    .line 1387
    iget-boolean v7, v0, LH0/l;->s0:Z

    .line 1388
    .line 1389
    if-eqz v7, :cond_44

    .line 1390
    .line 1391
    const/4 v7, 0x1

    .line 1392
    iput-boolean v7, v6, LO0/T;->G:Z

    .line 1393
    .line 1394
    :cond_44
    add-int/lit8 v5, v5, 0x1

    .line 1395
    .line 1396
    goto :goto_37

    .line 1397
    :cond_45
    iput-object v2, v1, LH0/t;->a0:LP0/f;

    .line 1398
    .line 1399
    iget-object v0, v1, LH0/t;->O:LU4/b;

    .line 1400
    .line 1401
    iget v3, v2, LP0/f;->I:I

    .line 1402
    .line 1403
    invoke-virtual {v0, v3}, LU4/b;->Y(I)I

    .line 1404
    .line 1405
    .line 1406
    move-result v0

    .line 1407
    move-object/from16 v3, v24

    .line 1408
    .line 1409
    invoke-virtual {v3, v2, v1, v0}, LS0/m;->g(LS0/j;LS0/h;I)V

    .line 1410
    .line 1411
    .line 1412
    const/4 v0, 0x1

    .line 1413
    :goto_38
    return v0
.end method

.method public final j()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LH0/t;->A0:Z

    .line 3
    .line 4
    iget-object v0, p0, LH0/t;->X:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, LH0/t;->W:LH0/q;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final k()Z
    .locals 1

    .line 1
    iget-object v0, p0, LH0/t;->P:LS0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, LS0/m;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final n(LS0/j;JJLjava/io/IOException;I)LS0/g;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p6

    .line 4
    .line 5
    move-object/from16 v7, p1

    .line 6
    .line 7
    check-cast v7, LP0/f;

    .line 8
    .line 9
    instance-of v8, v7, LH0/l;

    .line 10
    .line 11
    if-eqz v8, :cond_1

    .line 12
    .line 13
    move-object v1, v7

    .line 14
    check-cast v1, LH0/l;

    .line 15
    .line 16
    invoke-virtual {v1}, LH0/l;->f()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    instance-of v1, v12, Ls0/A;

    .line 23
    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    move-object v1, v12

    .line 27
    check-cast v1, Ls0/A;

    .line 28
    .line 29
    iget v1, v1, Ls0/A;->J:I

    .line 30
    .line 31
    const/16 v2, 0x19a

    .line 32
    .line 33
    if-eq v1, v2, :cond_0

    .line 34
    .line 35
    const/16 v2, 0x194

    .line 36
    .line 37
    if-ne v1, v2, :cond_1

    .line 38
    .line 39
    :cond_0
    sget-object v1, LS0/m;->J:LS0/g;

    .line 40
    .line 41
    goto/16 :goto_5

    .line 42
    .line 43
    :cond_1
    iget-object v1, v7, LP0/f;->O:Ls0/M;

    .line 44
    .line 45
    iget-wide v9, v1, Ls0/M;->b:J

    .line 46
    .line 47
    new-instance v11, LO0/p;

    .line 48
    .line 49
    iget-object v1, v7, LP0/f;->O:Ls0/M;

    .line 50
    .line 51
    iget-object v2, v1, Ls0/M;->c:Landroid/net/Uri;

    .line 52
    .line 53
    iget-object v1, v1, Ls0/M;->d:Ljava/util/Map;

    .line 54
    .line 55
    move-wide/from16 v2, p4

    .line 56
    .line 57
    invoke-direct {v11, v1, v2, v3}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 58
    .line 59
    .line 60
    new-instance v3, LO0/u;

    .line 61
    .line 62
    iget-wide v1, v7, LP0/f;->M:J

    .line 63
    .line 64
    invoke-static {v1, v2}, Lp0/M;->e0(J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v19

    .line 68
    iget-wide v1, v7, LP0/f;->N:J

    .line 69
    .line 70
    invoke-static {v1, v2}, Lp0/M;->e0(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v21

    .line 74
    iget v15, v0, LH0/t;->H:I

    .line 75
    .line 76
    iget-object v1, v7, LP0/f;->J:Lm0/t;

    .line 77
    .line 78
    iget v14, v7, LP0/f;->I:I

    .line 79
    .line 80
    iget v2, v7, LP0/f;->K:I

    .line 81
    .line 82
    iget-object v4, v7, LP0/f;->L:Ljava/lang/Object;

    .line 83
    .line 84
    move-object v13, v3

    .line 85
    move-object/from16 v16, v1

    .line 86
    .line 87
    move/from16 v17, v2

    .line 88
    .line 89
    move-object/from16 v18, v4

    .line 90
    .line 91
    invoke-direct/range {v13 .. v22}, LO0/u;-><init>(IILm0/t;ILjava/lang/Object;JJ)V

    .line 92
    .line 93
    .line 94
    new-instance v13, LB0/w0;

    .line 95
    .line 96
    const/4 v6, 0x1

    .line 97
    move-object v1, v13

    .line 98
    move-object v2, v11

    .line 99
    move-object/from16 v4, p6

    .line 100
    .line 101
    move/from16 v5, p7

    .line 102
    .line 103
    invoke-direct/range {v1 .. v6}, LB0/w0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/io/Serializable;II)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, LH0/t;->J:LH0/j;

    .line 107
    .line 108
    iget-object v2, v1, LH0/j;->s:LR0/t;

    .line 109
    .line 110
    invoke-static {v2}, LJ6/r;->e(LR0/t;)Lj0/c;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    iget-object v3, v0, LH0/t;->O:LU4/b;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {v2, v13}, LU4/b;->V(Lj0/c;LB0/w0;)LS0/g;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    const/4 v3, 0x0

    .line 124
    if-eqz v2, :cond_2

    .line 125
    .line 126
    iget v4, v2, LS0/g;->a:I

    .line 127
    .line 128
    const/4 v5, 0x2

    .line 129
    if-ne v4, v5, :cond_2

    .line 130
    .line 131
    iget-object v4, v1, LH0/j;->s:LR0/t;

    .line 132
    .line 133
    iget-object v1, v1, LH0/j;->h:Lm0/g0;

    .line 134
    .line 135
    iget-object v5, v7, LP0/f;->J:Lm0/t;

    .line 136
    .line 137
    invoke-virtual {v1, v5}, Lm0/g0;->b(Lm0/t;)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    check-cast v4, LR0/c;

    .line 142
    .line 143
    invoke-virtual {v4, v1}, LR0/c;->n(I)I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    iget-wide v5, v2, LS0/g;->b:J

    .line 148
    .line 149
    invoke-virtual {v4, v1, v5, v6}, LR0/c;->i(IJ)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    move v14, v1

    .line 154
    goto :goto_0

    .line 155
    :cond_2
    const/4 v14, 0x0

    .line 156
    :goto_0
    const/4 v1, 0x1

    .line 157
    if-eqz v14, :cond_6

    .line 158
    .line 159
    if-eqz v8, :cond_5

    .line 160
    .line 161
    const-wide/16 v4, 0x0

    .line 162
    .line 163
    cmp-long v2, v9, v4

    .line 164
    .line 165
    if-nez v2, :cond_5

    .line 166
    .line 167
    iget-object v2, v0, LH0/t;->T:Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    sub-int/2addr v4, v1

    .line 174
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    check-cast v4, LH0/l;

    .line 179
    .line 180
    if-ne v4, v7, :cond_3

    .line 181
    .line 182
    const/4 v3, 0x1

    .line 183
    :cond_3
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    if-eqz v3, :cond_4

    .line 191
    .line 192
    iget-wide v2, v0, LH0/t;->v0:J

    .line 193
    .line 194
    iput-wide v2, v0, LH0/t;->w0:J

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_4
    invoke-static {v2}, Ly4/k;->G(Ljava/lang/Iterable;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    check-cast v2, LH0/l;

    .line 202
    .line 203
    iput-boolean v1, v2, LH0/l;->q0:Z

    .line 204
    .line 205
    :cond_5
    :goto_1
    sget-object v2, LS0/m;->K:LS0/g;

    .line 206
    .line 207
    :goto_2
    move-object v15, v2

    .line 208
    goto :goto_3

    .line 209
    :cond_6
    invoke-static {v13}, LU4/b;->Z(LB0/w0;)J

    .line 210
    .line 211
    .line 212
    move-result-wide v4

    .line 213
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    cmp-long v2, v4, v8

    .line 219
    .line 220
    if-eqz v2, :cond_7

    .line 221
    .line 222
    invoke-static {v4, v5, v3}, LS0/m;->c(JZ)LS0/g;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    goto :goto_2

    .line 227
    :cond_7
    sget-object v2, LS0/m;->L:LS0/g;

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :goto_3
    invoke-virtual {v15}, LS0/g;->a()Z

    .line 231
    .line 232
    .line 233
    move-result v2

    .line 234
    xor-int/lit8 v16, v2, 0x1

    .line 235
    .line 236
    iget-wide v8, v7, LP0/f;->M:J

    .line 237
    .line 238
    iget-wide v5, v7, LP0/f;->N:J

    .line 239
    .line 240
    iget-object v1, v0, LH0/t;->Q:LO0/D;

    .line 241
    .line 242
    iget v3, v7, LP0/f;->I:I

    .line 243
    .line 244
    iget v4, v0, LH0/t;->H:I

    .line 245
    .line 246
    iget-object v10, v7, LP0/f;->J:Lm0/t;

    .line 247
    .line 248
    iget v13, v7, LP0/f;->K:I

    .line 249
    .line 250
    iget-object v7, v7, LP0/f;->L:Ljava/lang/Object;

    .line 251
    .line 252
    move-object v2, v11

    .line 253
    move-wide/from16 v17, v5

    .line 254
    .line 255
    move-object v5, v10

    .line 256
    move v6, v13

    .line 257
    move-wide/from16 v10, v17

    .line 258
    .line 259
    move-object/from16 v12, p6

    .line 260
    .line 261
    move/from16 v13, v16

    .line 262
    .line 263
    invoke-virtual/range {v1 .. v13}, LO0/D;->e(LO0/p;IILm0/t;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 264
    .line 265
    .line 266
    if-eqz v16, :cond_8

    .line 267
    .line 268
    const/4 v1, 0x0

    .line 269
    iput-object v1, v0, LH0/t;->a0:LP0/f;

    .line 270
    .line 271
    :cond_8
    if-eqz v14, :cond_a

    .line 272
    .line 273
    iget-boolean v1, v0, LH0/t;->j0:Z

    .line 274
    .line 275
    if-nez v1, :cond_9

    .line 276
    .line 277
    new-instance v1, LB0/c0;

    .line 278
    .line 279
    invoke-direct {v1}, LB0/c0;-><init>()V

    .line 280
    .line 281
    .line 282
    iget-wide v2, v0, LH0/t;->v0:J

    .line 283
    .line 284
    iput-wide v2, v1, LB0/c0;->a:J

    .line 285
    .line 286
    new-instance v2, LB0/d0;

    .line 287
    .line 288
    invoke-direct {v2, v1}, LB0/d0;-><init>(LB0/c0;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v2}, LH0/t;->g(LB0/d0;)Z

    .line 292
    .line 293
    .line 294
    goto :goto_4

    .line 295
    :cond_9
    iget-object v1, v0, LH0/t;->I:LD0/U;

    .line 296
    .line 297
    invoke-virtual {v1, v0}, LD0/U;->r(LO0/W;)V

    .line 298
    .line 299
    .line 300
    :cond_a
    :goto_4
    move-object v1, v15

    .line 301
    :goto_5
    return-object v1
.end method

.method public final o(LS0/j;JJ)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    check-cast v1, LP0/f;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, LH0/t;->a0:LP0/f;

    .line 7
    .line 8
    iget-object v2, v0, LH0/t;->J:LH0/j;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    instance-of v3, v1, LH0/f;

    .line 14
    .line 15
    if-eqz v3, :cond_0

    .line 16
    .line 17
    move-object v3, v1

    .line 18
    check-cast v3, LH0/f;

    .line 19
    .line 20
    iget-object v4, v3, LH0/f;->P:[B

    .line 21
    .line 22
    iput-object v4, v2, LH0/j;->n:[B

    .line 23
    .line 24
    iget-object v4, v3, LP0/f;->H:Ls0/m;

    .line 25
    .line 26
    iget-object v4, v4, Ls0/m;->a:Landroid/net/Uri;

    .line 27
    .line 28
    iget-object v3, v3, LH0/f;->R:[B

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object v2, v2, LH0/j;->j:Ls/b;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    iget-object v2, v2, Ls/b;->a:Ljava/util/LinkedHashMap;

    .line 42
    .line 43
    invoke-virtual {v2, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, [B

    .line 48
    .line 49
    :cond_0
    new-instance v4, LO0/p;

    .line 50
    .line 51
    iget-wide v2, v1, LP0/f;->G:J

    .line 52
    .line 53
    iget-object v2, v1, LP0/f;->O:Ls0/M;

    .line 54
    .line 55
    iget-object v3, v2, Ls0/M;->c:Landroid/net/Uri;

    .line 56
    .line 57
    iget-object v2, v2, Ls0/M;->d:Ljava/util/Map;

    .line 58
    .line 59
    move-wide/from16 v5, p4

    .line 60
    .line 61
    invoke-direct {v4, v2, v5, v6}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 62
    .line 63
    .line 64
    iget-object v2, v0, LH0/t;->O:LU4/b;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-wide v10, v1, LP0/f;->M:J

    .line 70
    .line 71
    iget-wide v12, v1, LP0/f;->N:J

    .line 72
    .line 73
    iget-object v3, v0, LH0/t;->Q:LO0/D;

    .line 74
    .line 75
    iget v5, v1, LP0/f;->I:I

    .line 76
    .line 77
    iget v6, v0, LH0/t;->H:I

    .line 78
    .line 79
    iget-object v7, v1, LP0/f;->J:Lm0/t;

    .line 80
    .line 81
    iget v8, v1, LP0/f;->K:I

    .line 82
    .line 83
    iget-object v9, v1, LP0/f;->L:Ljava/lang/Object;

    .line 84
    .line 85
    invoke-virtual/range {v3 .. v13}, LO0/D;->d(LO0/p;IILm0/t;ILjava/lang/Object;JJ)V

    .line 86
    .line 87
    .line 88
    iget-boolean v1, v0, LH0/t;->j0:Z

    .line 89
    .line 90
    if-nez v1, :cond_1

    .line 91
    .line 92
    new-instance v1, LB0/c0;

    .line 93
    .line 94
    invoke-direct {v1}, LB0/c0;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-wide v2, v0, LH0/t;->v0:J

    .line 98
    .line 99
    iput-wide v2, v1, LB0/c0;->a:J

    .line 100
    .line 101
    new-instance v2, LB0/d0;

    .line 102
    .line 103
    invoke-direct {v2, v1}, LB0/d0;-><init>(LB0/c0;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, v2}, LH0/t;->g(LB0/d0;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, v0, LH0/t;->I:LD0/U;

    .line 111
    .line 112
    invoke-virtual {v1, p0}, LD0/U;->r(LO0/W;)V

    .line 113
    .line 114
    .line 115
    :goto_0
    return-void
.end method

.method public final p(LS0/j;JJI)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    check-cast v1, LP0/f;

    .line 4
    .line 5
    if-nez p6, :cond_0

    .line 6
    .line 7
    new-instance v8, LO0/p;

    .line 8
    .line 9
    iget-wide v3, v1, LP0/f;->G:J

    .line 10
    .line 11
    iget-object v5, v1, LP0/f;->H:Ls0/m;

    .line 12
    .line 13
    move-object v2, v8

    .line 14
    move-wide/from16 v6, p2

    .line 15
    .line 16
    invoke-direct/range {v2 .. v7}, LO0/p;-><init>(JLs0/m;J)V

    .line 17
    .line 18
    .line 19
    move-object v3, v8

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, LO0/p;

    .line 22
    .line 23
    iget-wide v3, v1, LP0/f;->G:J

    .line 24
    .line 25
    iget-object v3, v1, LP0/f;->O:Ls0/M;

    .line 26
    .line 27
    iget-object v4, v3, Ls0/M;->c:Landroid/net/Uri;

    .line 28
    .line 29
    iget-object v3, v3, Ls0/M;->d:Ljava/util/Map;

    .line 30
    .line 31
    move-wide/from16 v4, p4

    .line 32
    .line 33
    invoke-direct {v2, v3, v4, v5}, LO0/p;-><init>(Ljava/util/Map;J)V

    .line 34
    .line 35
    .line 36
    move-object v3, v2

    .line 37
    :goto_0
    iget v4, v1, LP0/f;->I:I

    .line 38
    .line 39
    iget-wide v9, v1, LP0/f;->M:J

    .line 40
    .line 41
    iget-wide v11, v1, LP0/f;->N:J

    .line 42
    .line 43
    iget-object v2, v0, LH0/t;->Q:LO0/D;

    .line 44
    .line 45
    iget v5, v0, LH0/t;->H:I

    .line 46
    .line 47
    iget-object v6, v1, LP0/f;->J:Lm0/t;

    .line 48
    .line 49
    iget v7, v1, LP0/f;->K:I

    .line 50
    .line 51
    iget-object v8, v1, LP0/f;->L:Ljava/lang/Object;

    .line 52
    .line 53
    move/from16 v13, p6

    .line 54
    .line 55
    invoke-virtual/range {v2 .. v13}, LO0/D;->g(LO0/p;IILm0/t;ILjava/lang/Object;JJI)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final r(LW0/F;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final t(II)LW0/L;
    .locals 11

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, LH0/t;->E0:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v2, p0, LH0/t;->d0:Ljava/util/HashSet;

    .line 12
    .line 13
    iget-object v3, p0, LH0/t;->e0:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 28
    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    invoke-virtual {v3, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v1, v0, :cond_0

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, LH0/t;->c0:[I

    .line 49
    .line 50
    aput p1, v0, v1

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, LH0/t;->c0:[I

    .line 53
    .line 54
    aget v0, v0, v1

    .line 55
    .line 56
    if-ne v0, p1, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, LH0/t;->b0:[LH0/s;

    .line 59
    .line 60
    aget-object v0, v0, v1

    .line 61
    .line 62
    :goto_0
    move-object v5, v0

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-static {p1, p2}, LH0/t;->y(II)LW0/q;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v0, 0x0

    .line 70
    :goto_1
    iget-object v1, p0, LH0/t;->b0:[LH0/s;

    .line 71
    .line 72
    array-length v6, v1

    .line 73
    if-ge v0, v6, :cond_5

    .line 74
    .line 75
    iget-object v6, p0, LH0/t;->c0:[I

    .line 76
    .line 77
    aget v6, v6, v0

    .line 78
    .line 79
    if-ne v6, p1, :cond_4

    .line 80
    .line 81
    aget-object v5, v1, v0

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_5
    :goto_2
    if-nez v5, :cond_d

    .line 88
    .line 89
    iget-boolean v0, p0, LH0/t;->A0:Z

    .line 90
    .line 91
    if-eqz v0, :cond_6

    .line 92
    .line 93
    invoke-static {p1, p2}, LH0/t;->y(II)LW0/q;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    return-object p1

    .line 98
    :cond_6
    iget-object v0, p0, LH0/t;->b0:[LH0/s;

    .line 99
    .line 100
    array-length v0, v0

    .line 101
    const/4 v1, 0x1

    .line 102
    if-eq p2, v1, :cond_7

    .line 103
    .line 104
    const/4 v5, 0x2

    .line 105
    if-ne p2, v5, :cond_8

    .line 106
    .line 107
    :cond_7
    const/4 v4, 0x1

    .line 108
    :cond_8
    new-instance v5, LH0/s;

    .line 109
    .line 110
    iget-object v6, p0, LH0/t;->K:LS0/d;

    .line 111
    .line 112
    iget-object v7, p0, LH0/t;->Z:Ljava/util/Map;

    .line 113
    .line 114
    iget-object v8, p0, LH0/t;->M:LG0/r;

    .line 115
    .line 116
    iget-object v9, p0, LH0/t;->N:LG0/o;

    .line 117
    .line 118
    invoke-direct {v5, v6, v8, v9, v7}, LH0/s;-><init>(LS0/d;LG0/r;LG0/o;Ljava/util/Map;)V

    .line 119
    .line 120
    .line 121
    iget-wide v6, p0, LH0/t;->v0:J

    .line 122
    .line 123
    iput-wide v6, v5, LO0/T;->t:J

    .line 124
    .line 125
    if-eqz v4, :cond_9

    .line 126
    .line 127
    iget-object v6, p0, LH0/t;->C0:Lm0/n;

    .line 128
    .line 129
    iput-object v6, v5, LH0/s;->I:Lm0/n;

    .line 130
    .line 131
    iput-boolean v1, v5, LO0/T;->z:Z

    .line 132
    .line 133
    :cond_9
    iget-wide v6, p0, LH0/t;->B0:J

    .line 134
    .line 135
    iget-wide v8, v5, LO0/T;->F:J

    .line 136
    .line 137
    cmp-long v10, v8, v6

    .line 138
    .line 139
    if-eqz v10, :cond_a

    .line 140
    .line 141
    iput-wide v6, v5, LO0/T;->F:J

    .line 142
    .line 143
    iput-boolean v1, v5, LO0/T;->z:Z

    .line 144
    .line 145
    :cond_a
    iget-object v6, p0, LH0/t;->D0:LH0/l;

    .line 146
    .line 147
    if-eqz v6, :cond_b

    .line 148
    .line 149
    iget v6, v6, LH0/l;->Q:I

    .line 150
    .line 151
    int-to-long v6, v6

    .line 152
    iput-wide v6, v5, LO0/T;->C:J

    .line 153
    .line 154
    :cond_b
    iput-object p0, v5, LO0/T;->f:LO0/S;

    .line 155
    .line 156
    iget-object v6, p0, LH0/t;->c0:[I

    .line 157
    .line 158
    add-int/lit8 v7, v0, 0x1

    .line 159
    .line 160
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    .line 161
    .line 162
    .line 163
    move-result-object v6

    .line 164
    iput-object v6, p0, LH0/t;->c0:[I

    .line 165
    .line 166
    aput p1, v6, v0

    .line 167
    .line 168
    iget-object p1, p0, LH0/t;->b0:[LH0/s;

    .line 169
    .line 170
    sget-object v6, Lp0/M;->a:Ljava/lang/String;

    .line 171
    .line 172
    array-length v6, p1

    .line 173
    add-int/2addr v6, v1

    .line 174
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    array-length p1, p1

    .line 179
    aput-object v5, v1, p1

    .line 180
    .line 181
    check-cast v1, [LH0/s;

    .line 182
    .line 183
    iput-object v1, p0, LH0/t;->b0:[LH0/s;

    .line 184
    .line 185
    iget-object p1, p0, LH0/t;->u0:[Z

    .line 186
    .line 187
    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    iput-object p1, p0, LH0/t;->u0:[Z

    .line 192
    .line 193
    aput-boolean v4, p1, v0

    .line 194
    .line 195
    iget-boolean p1, p0, LH0/t;->s0:Z

    .line 196
    .line 197
    or-int/2addr p1, v4

    .line 198
    iput-boolean p1, p0, LH0/t;->s0:Z

    .line 199
    .line 200
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 208
    .line 209
    .line 210
    invoke-static {p2}, LH0/t;->D(I)I

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    iget v1, p0, LH0/t;->g0:I

    .line 215
    .line 216
    invoke-static {v1}, LH0/t;->D(I)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-le p1, v1, :cond_c

    .line 221
    .line 222
    iput v0, p0, LH0/t;->h0:I

    .line 223
    .line 224
    iput p2, p0, LH0/t;->g0:I

    .line 225
    .line 226
    :cond_c
    iget-object p1, p0, LH0/t;->t0:[Z

    .line 227
    .line 228
    invoke-static {p1, v7}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iput-object p1, p0, LH0/t;->t0:[Z

    .line 233
    .line 234
    :cond_d
    const/4 p1, 0x5

    .line 235
    if-ne p2, p1, :cond_f

    .line 236
    .line 237
    iget-object p1, p0, LH0/t;->f0:LH0/r;

    .line 238
    .line 239
    if-nez p1, :cond_e

    .line 240
    .line 241
    new-instance p1, LH0/r;

    .line 242
    .line 243
    iget p2, p0, LH0/t;->R:I

    .line 244
    .line 245
    invoke-direct {p1, v5, p2}, LH0/r;-><init>(LW0/L;I)V

    .line 246
    .line 247
    .line 248
    iput-object p1, p0, LH0/t;->f0:LH0/r;

    .line 249
    .line 250
    :cond_e
    iget-object p1, p0, LH0/t;->f0:LH0/r;

    .line 251
    .line 252
    return-object p1

    .line 253
    :cond_f
    return-object v5
.end method

.method public final u()J
    .locals 7

    .line 1
    iget-boolean v0, p0, LH0/t;->z0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-wide/high16 v0, -0x8000000000000000L

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {p0}, LH0/t;->E()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-wide v0, p0, LH0/t;->w0:J

    .line 15
    .line 16
    return-wide v0

    .line 17
    :cond_1
    iget-wide v0, p0, LH0/t;->v0:J

    .line 18
    .line 19
    invoke-virtual {p0}, LH0/t;->C()LH0/l;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-boolean v3, v2, LH0/l;->o0:Z

    .line 24
    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object v2, p0, LH0/t;->T:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x1

    .line 35
    if-le v3, v4, :cond_3

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-static {v2, v3}, Lcom/google/protobuf/U2;->g(Ljava/util/ArrayList;I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, LH0/l;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    const/4 v2, 0x0

    .line 46
    :goto_0
    if-eqz v2, :cond_4

    .line 47
    .line 48
    iget-wide v2, v2, LP0/f;->N:J

    .line 49
    .line 50
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    :cond_4
    iget-boolean v2, p0, LH0/t;->i0:Z

    .line 55
    .line 56
    if-eqz v2, :cond_5

    .line 57
    .line 58
    iget-object v2, p0, LH0/t;->b0:[LH0/s;

    .line 59
    .line 60
    array-length v3, v2

    .line 61
    const/4 v4, 0x0

    .line 62
    :goto_1
    if-ge v4, v3, :cond_5

    .line 63
    .line 64
    aget-object v5, v2, v4

    .line 65
    .line 66
    invoke-virtual {v5}, LO0/T;->q()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    add-int/lit8 v4, v4, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    return-wide v0
.end method

.method public final w(J)V
    .locals 5

    .line 1
    iget-object v0, p0, LH0/t;->P:LS0/m;

    .line 2
    .line 3
    invoke-virtual {v0}, LS0/m;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_7

    .line 8
    .line 9
    invoke-virtual {p0}, LH0/t;->E()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_4

    .line 16
    :cond_0
    invoke-virtual {v0}, LS0/m;->e()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, LH0/t;->J:LH0/j;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object p1, p0, LH0/t;->a0:LP0/f;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p1, v1, LH0/j;->o:LO0/b;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, v1, LH0/j;->s:LR0/t;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_2
    iget-object v0, p0, LH0/t;->U:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    :goto_1
    const/4 v3, 0x2

    .line 47
    if-lez v2, :cond_3

    .line 48
    .line 49
    add-int/lit8 v4, v2, -0x1

    .line 50
    .line 51
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, LH0/l;

    .line 56
    .line 57
    invoke-virtual {v1, v4}, LH0/j;->b(LH0/l;)I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-ne v4, v3, :cond_3

    .line 62
    .line 63
    add-int/lit8 v2, v2, -0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-ge v2, v4, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0, v2}, LH0/t;->B(I)V

    .line 73
    .line 74
    .line 75
    :cond_4
    iget-object v2, v1, LH0/j;->o:LO0/b;

    .line 76
    .line 77
    if-nez v2, :cond_6

    .line 78
    .line 79
    iget-object v1, v1, LH0/j;->s:LR0/t;

    .line 80
    .line 81
    move-object v2, v1

    .line 82
    check-cast v2, LR0/c;

    .line 83
    .line 84
    iget-object v2, v2, LR0/c;->c:[I

    .line 85
    .line 86
    array-length v2, v2

    .line 87
    if-ge v2, v3, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    invoke-interface {v1, p1, p2, v0}, LR0/t;->d(JLjava/util/List;)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    goto :goto_3

    .line 95
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    :goto_3
    iget-object p2, p0, LH0/t;->T:Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    if-ge p1, p2, :cond_7

    .line 106
    .line 107
    invoke-virtual {p0, p1}, LH0/t;->B(I)V

    .line 108
    .line 109
    .line 110
    :cond_7
    :goto_4
    return-void
.end method

.method public final x(I)Z
    .locals 4

    .line 1
    move v0, p1

    .line 2
    :goto_0
    iget-object v1, p0, LH0/t;->T:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    if-ge v0, v2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, LH0/l;

    .line 16
    .line 17
    iget-boolean v1, v1, LH0/l;->s0:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    return v3

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, LH0/l;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_1
    iget-object v1, p0, LH0/t;->b0:[LH0/s;

    .line 33
    .line 34
    array-length v1, v1

    .line 35
    if-ge v0, v1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1, v0}, LH0/l;->e(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v2, p0, LH0/t;->b0:[LH0/s;

    .line 42
    .line 43
    aget-object v2, v2, v0

    .line 44
    .line 45
    invoke-virtual {v2}, LO0/T;->t()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-le v2, v1, :cond_2

    .line 50
    .line 51
    return v3

    .line 52
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    const/4 p1, 0x1

    .line 56
    return p1
.end method

.method public final z([Lm0/g0;)LO0/Z;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, p1

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    aget-object v2, p1, v1

    .line 7
    .line 8
    iget v3, v2, Lm0/g0;->a:I

    .line 9
    .line 10
    new-array v3, v3, [Lm0/t;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    :goto_1
    iget v5, v2, Lm0/g0;->a:I

    .line 14
    .line 15
    if-ge v4, v5, :cond_0

    .line 16
    .line 17
    iget-object v5, v2, Lm0/g0;->d:[Lm0/t;

    .line 18
    .line 19
    aget-object v5, v5, v4

    .line 20
    .line 21
    iget-object v6, p0, LH0/t;->M:LG0/r;

    .line 22
    .line 23
    invoke-interface {v6, v5}, LG0/r;->m(Lm0/t;)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v5}, Lm0/t;->a()Lm0/s;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iput v6, v5, Lm0/s;->O:I

    .line 32
    .line 33
    invoke-virtual {v5}, Lm0/s;->a()Lm0/t;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    aput-object v5, v3, v4

    .line 38
    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance v4, Lm0/g0;

    .line 43
    .line 44
    iget-object v2, v2, Lm0/g0;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {v4, v2, v3}, Lm0/g0;-><init>(Ljava/lang/String;[Lm0/t;)V

    .line 47
    .line 48
    .line 49
    aput-object v4, p1, v1

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v0, LO0/Z;

    .line 55
    .line 56
    invoke-direct {v0, p1}, LO0/Z;-><init>([Lm0/g0;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method
