.class public final Lcom/google/android/gms/internal/ads/KN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vN;
.implements Lcom/google/android/gms/internal/ads/N;
.implements Lcom/google/android/gms/internal/ads/FO;
.implements Lcom/google/android/gms/internal/ads/HO;
.implements Lcom/google/android/gms/internal/ads/SN;


# static fields
.field public static final s0:Ljava/util/Map;

.field public static final t0:Lcom/google/android/gms/internal/ads/p0;


# instance fields
.field public final G:Landroid/net/Uri;

.field public final H:Lcom/google/android/gms/internal/ads/kC;

.field public final I:Lcom/google/android/gms/internal/ads/xM;

.field public final J:Lcom/google/android/gms/internal/ads/f8;

.field public final K:Lcom/google/android/gms/internal/ads/vM;

.field public final L:Lcom/google/android/gms/internal/ads/ON;

.field public final M:J

.field public final N:J

.field public final O:Lcom/google/android/gms/internal/ads/JO;

.field public final P:Lcom/google/android/gms/internal/ads/bD;

.field public final Q:LG/c;

.field public final R:Lcom/google/android/gms/internal/ads/EN;

.field public final S:Lcom/google/android/gms/internal/ads/EN;

.field public final T:Landroid/os/Handler;

.field public U:Lcom/google/android/gms/internal/ads/uN;

.field public V:Lcom/google/android/gms/internal/ads/I0;

.field public W:[Lcom/google/android/gms/internal/ads/TN;

.field public X:[Lcom/google/android/gms/internal/ads/IN;

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:Z

.field public c0:Lcom/google/android/gms/internal/ads/JN;

.field public d0:Lcom/google/android/gms/internal/ads/Y;

.field public e0:J

.field public f0:Z

.field public g0:I

.field public h0:Z

.field public i0:Z

.field public j0:I

.field public k0:Z

.field public l0:J

.field public m0:J

.field public n0:Z

.field public o0:I

.field public p0:Z

.field public q0:Z

.field public final r0:Lcom/google/android/gms/internal/ads/CO;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Icy-MetaData"

    .line 7
    .line 8
    const-string v2, "1"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/google/android/gms/internal/ads/KN;->s0:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "icy"

    .line 25
    .line 26
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "application/x-icy"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 36
    .line 37
    .line 38
    sput-object v1, Lcom/google/android/gms/internal/ads/KN;->t0:Lcom/google/android/gms/internal/ads/p0;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/bD;Lcom/google/android/gms/internal/ads/xM;Lcom/google/android/gms/internal/ads/vM;Lcom/google/android/gms/internal/ads/f8;Lcom/google/android/gms/internal/ads/ON;Lcom/google/android/gms/internal/ads/CO;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->G:Landroid/net/Uri;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/KN;->H:Lcom/google/android/gms/internal/ads/kC;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/KN;->I:Lcom/google/android/gms/internal/ads/xM;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/KN;->K:Lcom/google/android/gms/internal/ads/vM;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/KN;->J:Lcom/google/android/gms/internal/ads/f8;

    .line 13
    .line 14
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/KN;->L:Lcom/google/android/gms/internal/ads/ON;

    .line 15
    .line 16
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/KN;->r0:Lcom/google/android/gms/internal/ads/CO;

    .line 17
    .line 18
    int-to-long p1, p9

    .line 19
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/KN;->M:J

    .line 20
    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/JO;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/JO;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->O:Lcom/google/android/gms/internal/ads/JO;

    .line 27
    .line 28
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/KN;->P:Lcom/google/android/gms/internal/ads/bD;

    .line 29
    .line 30
    iput-wide p10, p0, Lcom/google/android/gms/internal/ads/KN;->N:J

    .line 31
    .line 32
    new-instance p1, LG/c;

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-direct {p1, p2}, LG/c;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->Q:LG/c;

    .line 39
    .line 40
    new-instance p1, Lcom/google/android/gms/internal/ads/EN;

    .line 41
    .line 42
    const/4 p3, 0x1

    .line 43
    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/EN;-><init>(Lcom/google/android/gms/internal/ads/KN;I)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->R:Lcom/google/android/gms/internal/ads/EN;

    .line 47
    .line 48
    new-instance p1, Lcom/google/android/gms/internal/ads/EN;

    .line 49
    .line 50
    const/4 p4, 0x2

    .line 51
    invoke-direct {p1, p0, p4}, Lcom/google/android/gms/internal/ads/EN;-><init>(Lcom/google/android/gms/internal/ads/KN;I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->S:Lcom/google/android/gms/internal/ads/EN;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance p4, Landroid/os/Handler;

    .line 64
    .line 65
    const/4 p5, 0x0

    .line 66
    invoke-direct {p4, p1, p5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 67
    .line 68
    .line 69
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/KN;->T:Landroid/os/Handler;

    .line 70
    .line 71
    new-array p1, p2, [Lcom/google/android/gms/internal/ads/IN;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->X:[Lcom/google/android/gms/internal/ads/IN;

    .line 74
    .line 75
    new-array p1, p2, [Lcom/google/android/gms/internal/ads/TN;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 78
    .line 79
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    .line 85
    .line 86
    iput p3, p0, Lcom/google/android/gms/internal/ads/KN;->g0:I

    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->c0:Lcom/google/android/gms/internal/ads/JN;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/JN;->b:[Z

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/KN;->d0:Lcom/google/android/gms/internal/ads/Y;

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Y;->zzh()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-eq v2, v1, :cond_0

    .line 16
    .line 17
    const-wide/16 p1, 0x0

    .line 18
    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/KN;->i0:Z

    .line 21
    .line 22
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/KN;->l0:J

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->u()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    .line 31
    .line 32
    return-wide p1

    .line 33
    :cond_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/KN;->g0:I

    .line 34
    .line 35
    const/4 v3, 0x7

    .line 36
    if-eq v2, v3, :cond_7

    .line 37
    .line 38
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 39
    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->O:Lcom/google/android/gms/internal/ads/JO;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 45
    .line 46
    if-eqz v2, :cond_7

    .line 47
    .line 48
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 49
    .line 50
    array-length v2, v2

    .line 51
    const/4 v3, 0x0

    .line 52
    :goto_0
    if-ge v3, v2, :cond_a

    .line 53
    .line 54
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 55
    .line 56
    aget-object v4, v4, v3

    .line 57
    .line 58
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/KN;->b0:Z

    .line 59
    .line 60
    if-eqz v5, :cond_5

    .line 61
    .line 62
    iget v5, v4, Lcom/google/android/gms/internal/ads/TN;->o:I

    .line 63
    .line 64
    monitor-enter v4

    .line 65
    :try_start_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/TN;->k()V

    .line 66
    .line 67
    .line 68
    iget v6, v4, Lcom/google/android/gms/internal/ads/TN;->o:I

    .line 69
    .line 70
    if-lt v5, v6, :cond_4

    .line 71
    .line 72
    iget v7, v4, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 73
    .line 74
    add-int/2addr v7, v6

    .line 75
    if-le v5, v7, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const-wide/high16 v7, -0x8000000000000000L

    .line 79
    .line 80
    iput-wide v7, v4, Lcom/google/android/gms/internal/ads/TN;->r:J

    .line 81
    .line 82
    sub-int/2addr v5, v6

    .line 83
    iput v5, v4, Lcom/google/android/gms/internal/ads/TN;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .line 85
    monitor-exit v4

    .line 86
    goto :goto_4

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    :goto_1
    monitor-exit v4

    .line 90
    goto :goto_3

    .line 91
    :goto_2
    monitor-exit v4

    .line 92
    throw p1

    .line 93
    :cond_5
    invoke-virtual {v4, p1, p2, v1}, Lcom/google/android/gms/internal/ads/TN;->r(JZ)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_6

    .line 98
    .line 99
    :goto_3
    aget-boolean v4, v0, v3

    .line 100
    .line 101
    if-nez v4, :cond_7

    .line 102
    .line 103
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/KN;->a0:Z

    .line 104
    .line 105
    if-nez v4, :cond_6

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    :goto_5
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/KN;->n0:Z

    .line 112
    .line 113
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    .line 114
    .line 115
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 116
    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->O:Lcom/google/android/gms/internal/ads/JO;

    .line 118
    .line 119
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 120
    .line 121
    if-eqz v2, :cond_9

    .line 122
    .line 123
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 124
    .line 125
    array-length v2, v0

    .line 126
    const/4 v3, 0x0

    .line 127
    :goto_6
    if-ge v3, v2, :cond_8

    .line 128
    .line 129
    aget-object v4, v0, v3

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/TN;->n()V

    .line 132
    .line 133
    .line 134
    add-int/lit8 v3, v3, 0x1

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->O:Lcom/google/android/gms/internal/ads/JO;

    .line 138
    .line 139
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 140
    .line 141
    invoke-static {v0}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/GO;->a(Z)V

    .line 145
    .line 146
    .line 147
    goto :goto_8

    .line 148
    :cond_9
    const/4 v2, 0x0

    .line 149
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/JO;->d:Ljava/io/IOException;

    .line 150
    .line 151
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 152
    .line 153
    array-length v2, v0

    .line 154
    const/4 v3, 0x0

    .line 155
    :goto_7
    if-ge v3, v2, :cond_a

    .line 156
    .line 157
    aget-object v4, v0, v3

    .line 158
    .line 159
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/TN;->o(Z)V

    .line 160
    .line 161
    .line 162
    add-int/lit8 v3, v3, 0x1

    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_a
    :goto_8
    return-wide p1
.end method

.method public final b(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/GN;Z)V
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/GN;->b:Lcom/google/android/gms/internal/ads/RI;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/pN;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RI;->b:Landroid/net/Uri;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/GN;->i:J

    .line 11
    .line 12
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/KN;->e0:J

    .line 13
    .line 14
    new-instance p1, Lcom/google/android/gms/internal/ads/nL;

    .line 15
    .line 16
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 17
    .line 18
    .line 19
    move-result-wide v9

    .line 20
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v11

    .line 24
    const/4 v7, -0x1

    .line 25
    const/4 v8, 0x0

    .line 26
    move-object v6, p1

    .line 27
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/nL;-><init>(ILcom/google/android/gms/internal/ads/p0;JJ)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->J:Lcom/google/android/gms/internal/ads/f8;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/f8;->k(Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;)V

    .line 33
    .line 34
    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 38
    .line 39
    array-length p2, p1

    .line 40
    const/4 v0, 0x0

    .line 41
    const/4 v1, 0x0

    .line 42
    :goto_0
    if-ge v1, p2, :cond_0

    .line 43
    .line 44
    aget-object v2, p1, v1

    .line 45
    .line 46
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/TN;->o(Z)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/KN;->j0:I

    .line 53
    .line 54
    if-lez p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->U:Lcom/google/android/gms/internal/ads/uN;

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/uN;->c(Lcom/google/android/gms/internal/ads/VN;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/uN;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->U:Lcom/google/android/gms/internal/ads/uN;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->Q:LG/c;

    .line 4
    .line 5
    invoke-virtual {p1}, LG/c;->e()Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->t()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final e(J)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->b0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_5

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->p()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->u()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->c0:Lcom/google/android/gms/internal/ads/JN;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/JN;->c:[Z

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 20
    .line 21
    array-length v1, v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :goto_0
    if-ge v2, v1, :cond_4

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 26
    .line 27
    aget-object v3, v3, v2

    .line 28
    .line 29
    aget-boolean v4, v0, v2

    .line 30
    .line 31
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/TN;->a:Lcom/google/android/gms/internal/ads/QN;

    .line 32
    .line 33
    monitor-enter v3

    .line 34
    :try_start_0
    iget v5, v3, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 35
    .line 36
    if-eqz v5, :cond_3

    .line 37
    .line 38
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/TN;->l:[J

    .line 39
    .line 40
    iget v7, v3, Lcom/google/android/gms/internal/ads/TN;->p:I

    .line 41
    .line 42
    aget-wide v8, v6, v7

    .line 43
    .line 44
    cmp-long v6, p1, v8

    .line 45
    .line 46
    if-gez v6, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    if-eqz v4, :cond_2

    .line 50
    .line 51
    iget v4, v3, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 52
    .line 53
    if-eq v4, v5, :cond_2

    .line 54
    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 56
    .line 57
    move v6, v4

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_4

    .line 61
    :cond_2
    move v6, v5

    .line 62
    :goto_1
    const/4 v9, 0x0

    .line 63
    move-object v4, v3

    .line 64
    move v5, v7

    .line 65
    move-wide v7, p1

    .line 66
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/TN;->g(IIJZ)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    const/4 v5, -0x1

    .line 71
    if-eq v4, v5, :cond_3

    .line 72
    .line 73
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/TN;->i(I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit v3

    .line 78
    goto :goto_3

    .line 79
    :cond_3
    :goto_2
    monitor-exit v3

    .line 80
    const-wide/16 v4, -0x1

    .line 81
    .line 82
    :goto_3
    invoke-virtual {v10, v4, v5}, Lcom/google/android/gms/internal/ads/QN;->a(J)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :goto_4
    monitor-exit v3

    .line 89
    throw p1

    .line 90
    :cond_4
    :goto_5
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->Y:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->T:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/KN;->R:Lcom/google/android/gms/internal/ads/EN;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/ads/Y;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/co;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->T:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final h(II)Lcom/google/android/gms/internal/ads/e0;
    .locals 1

    .line 1
    new-instance p2, Lcom/google/android/gms/internal/ads/IN;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/IN;-><init>(IZ)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/KN;->o(Lcom/google/android/gms/internal/ads/IN;)Lcom/google/android/gms/internal/ads/e0;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final i(JLcom/google/android/gms/internal/ads/ZK;)J
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/KN;->p()V

    .line 8
    .line 9
    .line 10
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/KN;->d0:Lcom/google/android/gms/internal/ads/Y;

    .line 11
    .line 12
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Y;->zzh()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    const-wide/16 v5, 0x0

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    return-wide v5

    .line 21
    :cond_0
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/KN;->d0:Lcom/google/android/gms/internal/ads/Y;

    .line 22
    .line 23
    invoke-interface {v4, v1, v2}, Lcom/google/android/gms/internal/ads/Y;->b(J)Lcom/google/android/gms/internal/ads/X;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/X;->a:Lcom/google/android/gms/internal/ads/Z;

    .line 28
    .line 29
    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/ZK;->a:J

    .line 30
    .line 31
    iget-wide v10, v3, Lcom/google/android/gms/internal/ads/ZK;->b:J

    .line 32
    .line 33
    cmp-long v3, v8, v5

    .line 34
    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    cmp-long v3, v10, v5

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    move-wide v12, v1

    .line 42
    goto :goto_2

    .line 43
    :cond_1
    move-wide v8, v5

    .line 44
    :cond_2
    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/Z;->a:J

    .line 45
    .line 46
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 47
    .line 48
    sub-long v14, v1, v8

    .line 49
    .line 50
    xor-long v7, v1, v8

    .line 51
    .line 52
    xor-long v16, v1, v14

    .line 53
    .line 54
    add-long v18, v1, v10

    .line 55
    .line 56
    xor-long v20, v1, v18

    .line 57
    .line 58
    xor-long v9, v10, v18

    .line 59
    .line 60
    and-long v7, v7, v16

    .line 61
    .line 62
    cmp-long v3, v7, v5

    .line 63
    .line 64
    if-gez v3, :cond_3

    .line 65
    .line 66
    const-wide/high16 v14, -0x8000000000000000L

    .line 67
    .line 68
    :cond_3
    and-long v7, v20, v9

    .line 69
    .line 70
    cmp-long v3, v7, v5

    .line 71
    .line 72
    if-gez v3, :cond_4

    .line 73
    .line 74
    const-wide v18, 0x7fffffffffffffffL

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :cond_4
    const/4 v3, 0x1

    .line 80
    const/4 v5, 0x0

    .line 81
    cmp-long v6, v14, v12

    .line 82
    .line 83
    if-gtz v6, :cond_5

    .line 84
    .line 85
    cmp-long v6, v12, v18

    .line 86
    .line 87
    if-gtz v6, :cond_5

    .line 88
    .line 89
    const/4 v6, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    const/4 v6, 0x0

    .line 92
    :goto_0
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/X;->b:Lcom/google/android/gms/internal/ads/Z;

    .line 93
    .line 94
    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/Z;->a:J

    .line 95
    .line 96
    cmp-long v4, v14, v7

    .line 97
    .line 98
    if-gtz v4, :cond_6

    .line 99
    .line 100
    cmp-long v4, v7, v18

    .line 101
    .line 102
    if-gtz v4, :cond_6

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_6
    const/4 v3, 0x0

    .line 106
    :goto_1
    if-eqz v6, :cond_8

    .line 107
    .line 108
    if-eqz v3, :cond_8

    .line 109
    .line 110
    sub-long v3, v12, v1

    .line 111
    .line 112
    sub-long v1, v7, v1

    .line 113
    .line 114
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    cmp-long v5, v3, v1

    .line 123
    .line 124
    if-gtz v5, :cond_7

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_7
    return-wide v7

    .line 128
    :cond_8
    if-eqz v6, :cond_9

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_9
    if-eqz v3, :cond_a

    .line 132
    .line 133
    move-wide v12, v7

    .line 134
    :goto_2
    return-wide v12

    .line 135
    :cond_a
    return-wide v14
.end method

.method public final j(Lcom/google/android/gms/internal/ads/EK;)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 2
    .line 3
    if-nez p1, :cond_3

    .line 4
    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->O:Lcom/google/android/gms/internal/ads/JO;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/JO;->d:Ljava/io/IOException;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->n0:Z

    .line 13
    .line 14
    if-nez v0, :cond_3

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->Z:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/KN;->j0:I

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->Q:LG/c;

    .line 25
    .line 26
    invoke-virtual {v0}, LG/c;->e()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    return v0

    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->t()V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 41
    return p1
.end method

.method public final k([Lcom/google/android/gms/internal/ads/uO;[Z[Lcom/google/android/gms/internal/ads/UN;[ZJ)J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->c0:Lcom/google/android/gms/internal/ads/JN;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/JN;->a:Lcom/google/android/gms/internal/ads/bO;

    .line 7
    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/ads/KN;->j0:I

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    array-length v5, p1

    .line 13
    const/4 v6, -0x1

    .line 14
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/JN;->c:[Z

    .line 15
    .line 16
    if-ge v4, v5, :cond_2

    .line 17
    .line 18
    aget-object v5, p3, v4

    .line 19
    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    aget-object v8, p1, v4

    .line 23
    .line 24
    if-eqz v8, :cond_0

    .line 25
    .line 26
    aget-boolean v8, p2, v4

    .line 27
    .line 28
    if-nez v8, :cond_1

    .line 29
    .line 30
    :cond_0
    check-cast v5, Lcom/google/android/gms/internal/ads/HN;

    .line 31
    .line 32
    iget v5, v5, Lcom/google/android/gms/internal/ads/HN;->a:I

    .line 33
    .line 34
    aget-boolean v8, v7, v5

    .line 35
    .line 36
    invoke-static {v8}, Lo3/r;->M(Z)V

    .line 37
    .line 38
    .line 39
    iget v8, p0, Lcom/google/android/gms/internal/ads/KN;->j0:I

    .line 40
    .line 41
    add-int/2addr v8, v6

    .line 42
    iput v8, p0, Lcom/google/android/gms/internal/ads/KN;->j0:I

    .line 43
    .line 44
    aput-boolean v3, v7, v5

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    aput-object v5, p3, v4

    .line 48
    .line 49
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/KN;->h0:Z

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    if-eqz p2, :cond_4

    .line 56
    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    :goto_1
    const/4 p2, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    const/4 p2, 0x0

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    const-wide/16 v4, 0x0

    .line 64
    .line 65
    cmp-long p2, p5, v4

    .line 66
    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/KN;->b0:Z

    .line 70
    .line 71
    if-nez p2, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :goto_2
    const/4 v2, 0x0

    .line 75
    :goto_3
    array-length v4, p1

    .line 76
    if-ge v2, v4, :cond_a

    .line 77
    .line 78
    aget-object v4, p3, v2

    .line 79
    .line 80
    if-nez v4, :cond_9

    .line 81
    .line 82
    aget-object v4, p1, v2

    .line 83
    .line 84
    if-eqz v4, :cond_9

    .line 85
    .line 86
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/uO;->zzc()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-ne v5, v0, :cond_5

    .line 91
    .line 92
    const/4 v5, 0x1

    .line 93
    goto :goto_4

    .line 94
    :cond_5
    const/4 v5, 0x0

    .line 95
    :goto_4
    invoke-static {v5}, Lo3/r;->M(Z)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/uO;->zza(I)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-nez v5, :cond_6

    .line 103
    .line 104
    const/4 v5, 0x1

    .line 105
    goto :goto_5

    .line 106
    :cond_6
    const/4 v5, 0x0

    .line 107
    :goto_5
    invoke-static {v5}, Lo3/r;->M(Z)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/uO;->zze()Lcom/google/android/gms/internal/ads/Ve;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/bO;->b:Lcom/google/android/gms/internal/ads/PA;

    .line 115
    .line 116
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/uA;->indexOf(Ljava/lang/Object;)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-ltz v4, :cond_7

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_7
    const/4 v4, -0x1

    .line 124
    :goto_6
    aget-boolean v5, v7, v4

    .line 125
    .line 126
    xor-int/2addr v5, v0

    .line 127
    invoke-static {v5}, Lo3/r;->M(Z)V

    .line 128
    .line 129
    .line 130
    iget v5, p0, Lcom/google/android/gms/internal/ads/KN;->j0:I

    .line 131
    .line 132
    add-int/2addr v5, v0

    .line 133
    iput v5, p0, Lcom/google/android/gms/internal/ads/KN;->j0:I

    .line 134
    .line 135
    aput-boolean v0, v7, v4

    .line 136
    .line 137
    new-instance v5, Lcom/google/android/gms/internal/ads/HN;

    .line 138
    .line 139
    invoke-direct {v5, p0, v4}, Lcom/google/android/gms/internal/ads/HN;-><init>(Lcom/google/android/gms/internal/ads/KN;I)V

    .line 140
    .line 141
    .line 142
    aput-object v5, p3, v2

    .line 143
    .line 144
    aput-boolean v0, p4, v2

    .line 145
    .line 146
    if-nez p2, :cond_9

    .line 147
    .line 148
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 149
    .line 150
    aget-object p2, p2, v4

    .line 151
    .line 152
    iget v4, p2, Lcom/google/android/gms/internal/ads/TN;->o:I

    .line 153
    .line 154
    iget v5, p2, Lcom/google/android/gms/internal/ads/TN;->q:I

    .line 155
    .line 156
    add-int/2addr v4, v5

    .line 157
    if-eqz v4, :cond_8

    .line 158
    .line 159
    invoke-virtual {p2, p5, p6, v0}, Lcom/google/android/gms/internal/ads/TN;->r(JZ)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-nez p2, :cond_8

    .line 164
    .line 165
    const/4 p2, 0x1

    .line 166
    goto :goto_7

    .line 167
    :cond_8
    const/4 p2, 0x0

    .line 168
    :cond_9
    :goto_7
    add-int/lit8 v2, v2, 0x1

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_a
    iget p1, p0, Lcom/google/android/gms/internal/ads/KN;->j0:I

    .line 172
    .line 173
    if-nez p1, :cond_d

    .line 174
    .line 175
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/KN;->n0:Z

    .line 176
    .line 177
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/KN;->i0:Z

    .line 178
    .line 179
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->O:Lcom/google/android/gms/internal/ads/JO;

    .line 180
    .line 181
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 182
    .line 183
    if-eqz p2, :cond_c

    .line 184
    .line 185
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 186
    .line 187
    array-length p3, p2

    .line 188
    const/4 p4, 0x0

    .line 189
    :goto_8
    if-ge p4, p3, :cond_b

    .line 190
    .line 191
    aget-object v1, p2, p4

    .line 192
    .line 193
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/TN;->n()V

    .line 194
    .line 195
    .line 196
    add-int/lit8 p4, p4, 0x1

    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_b
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 200
    .line 201
    invoke-static {p1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/GO;->a(Z)V

    .line 205
    .line 206
    .line 207
    goto :goto_b

    .line 208
    :cond_c
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 209
    .line 210
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 211
    .line 212
    array-length p2, p1

    .line 213
    const/4 p3, 0x0

    .line 214
    :goto_9
    if-ge p3, p2, :cond_f

    .line 215
    .line 216
    aget-object p4, p1, p3

    .line 217
    .line 218
    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/TN;->o(Z)V

    .line 219
    .line 220
    .line 221
    add-int/lit8 p3, p3, 0x1

    .line 222
    .line 223
    goto :goto_9

    .line 224
    :cond_d
    if-eqz p2, :cond_f

    .line 225
    .line 226
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gms/internal/ads/KN;->a(J)J

    .line 227
    .line 228
    .line 229
    move-result-wide p5

    .line 230
    :goto_a
    array-length p1, p3

    .line 231
    if-ge v3, p1, :cond_f

    .line 232
    .line 233
    aget-object p1, p3, v3

    .line 234
    .line 235
    if-eqz p1, :cond_e

    .line 236
    .line 237
    aput-boolean v0, p4, v3

    .line 238
    .line 239
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 240
    .line 241
    goto :goto_a

    .line 242
    :cond_f
    :goto_b
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->h0:Z

    .line 243
    .line 244
    return-wide p5
.end method

.method public final l(Lcom/google/android/gms/internal/ads/GN;)V
    .locals 14

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/KN;->e0:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    cmp-long v5, v0, v2

    .line 10
    .line 11
    if-nez v5, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->d0:Lcom/google/android/gms/internal/ads/Y;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Y;->zzh()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/KN;->n(Z)J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    const-wide/high16 v5, -0x8000000000000000L

    .line 26
    .line 27
    cmp-long v3, v1, v5

    .line 28
    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const-wide/16 v1, 0x0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-wide/16 v5, 0x2710

    .line 35
    .line 36
    add-long/2addr v1, v5

    .line 37
    :goto_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/KN;->e0:J

    .line 38
    .line 39
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/KN;->L:Lcom/google/android/gms/internal/ads/ON;

    .line 40
    .line 41
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/KN;->f0:Z

    .line 42
    .line 43
    invoke-virtual {v3, v1, v2, v0, v5}, Lcom/google/android/gms/internal/ads/ON;->s(JZZ)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/GN;->b:Lcom/google/android/gms/internal/ads/RI;

    .line 47
    .line 48
    new-instance v1, Lcom/google/android/gms/internal/ads/pN;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/RI;->b:Landroid/net/Uri;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/GN;->i:J

    .line 56
    .line 57
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/KN;->e0:J

    .line 58
    .line 59
    new-instance p1, Lcom/google/android/gms/internal/ads/nL;

    .line 60
    .line 61
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 62
    .line 63
    .line 64
    move-result-wide v10

    .line 65
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v12

    .line 69
    const/4 v8, -0x1

    .line 70
    const/4 v9, 0x0

    .line 71
    move-object v7, p1

    .line 72
    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/nL;-><init>(ILcom/google/android/gms/internal/ads/p0;JJ)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->J:Lcom/google/android/gms/internal/ads/f8;

    .line 76
    .line 77
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/f8;->m(Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;)V

    .line 78
    .line 79
    .line 80
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 81
    .line 82
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->U:Lcom/google/android/gms/internal/ads/uN;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/uN;->c(Lcom/google/android/gms/internal/ads/VN;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final m()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    .line 8
    aget-object v4, v0, v2

    .line 9
    .line 10
    iget v5, v4, Lcom/google/android/gms/internal/ads/TN;->o:I

    .line 11
    .line 12
    iget v4, v4, Lcom/google/android/gms/internal/ads/TN;->n:I

    .line 13
    .line 14
    add-int/2addr v5, v4

    .line 15
    add-int/2addr v3, v5

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v3
.end method

.method public final n(Z)J
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/high16 v1, -0x8000000000000000L

    .line 3
    .line 4
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 5
    .line 6
    array-length v4, v3

    .line 7
    if-ge v0, v4, :cond_2

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/KN;->c0:Lcom/google/android/gms/internal/ads/JN;

    .line 12
    .line 13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/JN;->c:[Z

    .line 17
    .line 18
    aget-boolean v4, v4, v0

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    :cond_0
    aget-object v3, v3, v0

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/TN;->l()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    return-wide v1
.end method

.method public final o(Lcom/google/android/gms/internal/ads/IN;)Lcom/google/android/gms/internal/ads/e0;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->X:[Lcom/google/android/gms/internal/ads/IN;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/IN;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 18
    .line 19
    aget-object p1, p1, v1

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/KN;->Y:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v1, "Extractor added new track (id="

    .line 32
    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget p1, p1, Lcom/google/android/gms/internal/ads/IN;->a:I

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ") after finishing tracks."

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const-string v0, "ProgressiveMediaPeriod"

    .line 51
    .line 52
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p1, Lcom/google/android/gms/internal/ads/I;

    .line 56
    .line 57
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/I;-><init>()V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/TN;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->I:Lcom/google/android/gms/internal/ads/xM;

    .line 64
    .line 65
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/KN;->K:Lcom/google/android/gms/internal/ads/vM;

    .line 66
    .line 67
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/KN;->r0:Lcom/google/android/gms/internal/ads/CO;

    .line 68
    .line 69
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/TN;-><init>(Lcom/google/android/gms/internal/ads/CO;Lcom/google/android/gms/internal/ads/xM;Lcom/google/android/gms/internal/ads/vM;)V

    .line 70
    .line 71
    .line 72
    iput-object p0, v1, Lcom/google/android/gms/internal/ads/TN;->e:Lcom/google/android/gms/internal/ads/SN;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->X:[Lcom/google/android/gms/internal/ads/IN;

    .line 75
    .line 76
    add-int/lit8 v3, v0, 0x1

    .line 77
    .line 78
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, [Lcom/google/android/gms/internal/ads/IN;

    .line 83
    .line 84
    aput-object p1, v2, v0

    .line 85
    .line 86
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 87
    .line 88
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->X:[Lcom/google/android/gms/internal/ads/IN;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 91
    .line 92
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    check-cast p1, [Lcom/google/android/gms/internal/ads/TN;

    .line 97
    .line 98
    aput-object v1, p1, v0

    .line 99
    .line 100
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 101
    .line 102
    return-object v1
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->Z:Z

    .line 2
    .line 3
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->c0:Lcom/google/android/gms/internal/ads/JN;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->d0:Lcom/google/android/gms/internal/ads/Y;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final q()V
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/KN;->q0:Z

    .line 4
    .line 5
    if-nez v2, :cond_f

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/KN;->Z:Z

    .line 8
    .line 9
    if-nez v2, :cond_f

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/KN;->Y:Z

    .line 12
    .line 13
    if-eqz v2, :cond_f

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->d0:Lcom/google/android/gms/internal/ads/Y;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_9

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 22
    .line 23
    array-length v3, v2

    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-ge v4, v3, :cond_2

    .line 26
    .line 27
    aget-object v5, v2, v4

    .line 28
    .line 29
    monitor-enter v5

    .line 30
    :try_start_0
    iget-boolean v6, v5, Lcom/google/android/gms/internal/ads/TN;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    if-eqz v6, :cond_1

    .line 33
    .line 34
    monitor-exit v5

    .line 35
    const/4 v5, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    :try_start_1
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/TN;->x:Lcom/google/android/gms/internal/ads/p0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    monitor-exit v5

    .line 40
    move-object v5, v6

    .line 41
    :goto_1
    if-eqz v5, :cond_f

    .line 42
    .line 43
    add-int/2addr v4, v1

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit v5

    .line 47
    throw v0

    .line 48
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->Q:LG/c;

    .line 49
    .line 50
    invoke-virtual {v2}, LG/c;->d()Z

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 54
    .line 55
    array-length v2, v2

    .line 56
    new-array v3, v2, [Lcom/google/android/gms/internal/ads/Ve;

    .line 57
    .line 58
    new-array v4, v2, [Z

    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    :goto_2
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/KN;->N:J

    .line 62
    .line 63
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    if-ge v5, v2, :cond_d

    .line 69
    .line 70
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 71
    .line 72
    aget-object v10, v10, v5

    .line 73
    .line 74
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/TN;->m()Lcom/google/android/gms/internal/ads/p0;

    .line 75
    .line 76
    .line 77
    move-result-object v10

    .line 78
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 82
    .line 83
    const-string v12, "audio"

    .line 84
    .line 85
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/va;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    if-nez v12, :cond_3

    .line 94
    .line 95
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/va;->g(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    if-eqz v13, :cond_4

    .line 100
    .line 101
    :cond_3
    const/4 v13, 0x1

    .line 102
    goto :goto_3

    .line 103
    :cond_4
    const/4 v13, 0x0

    .line 104
    :goto_3
    aput-boolean v13, v4, v5

    .line 105
    .line 106
    iget-boolean v14, p0, Lcom/google/android/gms/internal/ads/KN;->a0:Z

    .line 107
    .line 108
    or-int/2addr v13, v14

    .line 109
    iput-boolean v13, p0, Lcom/google/android/gms/internal/ads/KN;->a0:Z

    .line 110
    .line 111
    const-string v13, "image"

    .line 112
    .line 113
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/va;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v14

    .line 117
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    if-nez v13, :cond_6

    .line 122
    .line 123
    const-string v13, "application/x-image-uri"

    .line 124
    .line 125
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-eqz v11, :cond_5

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_5
    const/4 v11, 0x0

    .line 133
    goto :goto_5

    .line 134
    :cond_6
    :goto_4
    const/4 v11, 0x1

    .line 135
    :goto_5
    cmp-long v13, v6, v8

    .line 136
    .line 137
    if-eqz v13, :cond_7

    .line 138
    .line 139
    if-ne v2, v1, :cond_7

    .line 140
    .line 141
    if-eqz v11, :cond_7

    .line 142
    .line 143
    const/4 v6, 0x1

    .line 144
    goto :goto_6

    .line 145
    :cond_7
    const/4 v6, 0x0

    .line 146
    :goto_6
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/KN;->b0:Z

    .line 147
    .line 148
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/KN;->V:Lcom/google/android/gms/internal/ads/I0;

    .line 149
    .line 150
    if-eqz v6, :cond_b

    .line 151
    .line 152
    if-nez v12, :cond_8

    .line 153
    .line 154
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/KN;->X:[Lcom/google/android/gms/internal/ads/IN;

    .line 155
    .line 156
    aget-object v7, v7, v5

    .line 157
    .line 158
    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/IN;->b:Z

    .line 159
    .line 160
    if-eqz v7, :cond_a

    .line 161
    .line 162
    :cond_8
    iget-object v7, v10, Lcom/google/android/gms/internal/ads/p0;->k:Lcom/google/android/gms/internal/ads/Q9;

    .line 163
    .line 164
    if-nez v7, :cond_9

    .line 165
    .line 166
    new-instance v7, Lcom/google/android/gms/internal/ads/Q9;

    .line 167
    .line 168
    new-array v11, v1, [Lcom/google/android/gms/internal/ads/K9;

    .line 169
    .line 170
    aput-object v6, v11, v0

    .line 171
    .line 172
    invoke-direct {v7, v8, v9, v11}, Lcom/google/android/gms/internal/ads/Q9;-><init>(J[Lcom/google/android/gms/internal/ads/K9;)V

    .line 173
    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_9
    new-array v8, v1, [Lcom/google/android/gms/internal/ads/K9;

    .line 177
    .line 178
    aput-object v6, v8, v0

    .line 179
    .line 180
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/Q9;->d([Lcom/google/android/gms/internal/ads/K9;)Lcom/google/android/gms/internal/ads/Q9;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    :goto_7
    new-instance v8, Lcom/google/android/gms/internal/ads/K;

    .line 185
    .line 186
    invoke-direct {v8, v10}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 187
    .line 188
    .line 189
    iput-object v7, v8, Lcom/google/android/gms/internal/ads/K;->j:Lcom/google/android/gms/internal/ads/Q9;

    .line 190
    .line 191
    new-instance v10, Lcom/google/android/gms/internal/ads/p0;

    .line 192
    .line 193
    invoke-direct {v10, v8}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 194
    .line 195
    .line 196
    :cond_a
    if-eqz v12, :cond_b

    .line 197
    .line 198
    iget v7, v10, Lcom/google/android/gms/internal/ads/p0;->g:I

    .line 199
    .line 200
    const/4 v8, -0x1

    .line 201
    if-ne v7, v8, :cond_b

    .line 202
    .line 203
    iget v7, v10, Lcom/google/android/gms/internal/ads/p0;->h:I

    .line 204
    .line 205
    if-ne v7, v8, :cond_b

    .line 206
    .line 207
    iget v6, v6, Lcom/google/android/gms/internal/ads/I0;->G:I

    .line 208
    .line 209
    if-eq v6, v8, :cond_b

    .line 210
    .line 211
    new-instance v7, Lcom/google/android/gms/internal/ads/K;

    .line 212
    .line 213
    invoke-direct {v7, v10}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 214
    .line 215
    .line 216
    iput v6, v7, Lcom/google/android/gms/internal/ads/K;->g:I

    .line 217
    .line 218
    new-instance v10, Lcom/google/android/gms/internal/ads/p0;

    .line 219
    .line 220
    invoke-direct {v10, v7}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 221
    .line 222
    .line 223
    :cond_b
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/KN;->I:Lcom/google/android/gms/internal/ads/xM;

    .line 224
    .line 225
    check-cast v6, Lcom/google/android/gms/internal/ads/y1;

    .line 226
    .line 227
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/p0;->q:Lcom/google/android/gms/internal/ads/mO;

    .line 231
    .line 232
    if-eqz v6, :cond_c

    .line 233
    .line 234
    const/4 v6, 0x1

    .line 235
    goto :goto_8

    .line 236
    :cond_c
    const/4 v6, 0x0

    .line 237
    :goto_8
    new-instance v7, Lcom/google/android/gms/internal/ads/K;

    .line 238
    .line 239
    invoke-direct {v7, v10}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 240
    .line 241
    .line 242
    iput v6, v7, Lcom/google/android/gms/internal/ads/K;->G:I

    .line 243
    .line 244
    new-instance v6, Lcom/google/android/gms/internal/ads/p0;

    .line 245
    .line 246
    invoke-direct {v6, v7}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 247
    .line 248
    .line 249
    new-instance v7, Lcom/google/android/gms/internal/ads/Ve;

    .line 250
    .line 251
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    new-array v9, v1, [Lcom/google/android/gms/internal/ads/p0;

    .line 256
    .line 257
    aput-object v6, v9, v0

    .line 258
    .line 259
    invoke-direct {v7, v8, v9}, Lcom/google/android/gms/internal/ads/Ve;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/p0;)V

    .line 260
    .line 261
    .line 262
    aput-object v7, v3, v5

    .line 263
    .line 264
    add-int/2addr v5, v1

    .line 265
    goto/16 :goto_2

    .line 266
    .line 267
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/JN;

    .line 268
    .line 269
    new-instance v2, Lcom/google/android/gms/internal/ads/bO;

    .line 270
    .line 271
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/bO;-><init>([Lcom/google/android/gms/internal/ads/Ve;)V

    .line 272
    .line 273
    .line 274
    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/internal/ads/JN;-><init>(Lcom/google/android/gms/internal/ads/bO;[Z)V

    .line 275
    .line 276
    .line 277
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->c0:Lcom/google/android/gms/internal/ads/JN;

    .line 278
    .line 279
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->b0:Z

    .line 280
    .line 281
    if-eqz v0, :cond_e

    .line 282
    .line 283
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/KN;->e0:J

    .line 284
    .line 285
    cmp-long v0, v2, v8

    .line 286
    .line 287
    if-nez v0, :cond_e

    .line 288
    .line 289
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/KN;->e0:J

    .line 290
    .line 291
    new-instance v0, Lcom/google/android/gms/internal/ads/FN;

    .line 292
    .line 293
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->d0:Lcom/google/android/gms/internal/ads/Y;

    .line 294
    .line 295
    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/FN;-><init>(Lcom/google/android/gms/internal/ads/KN;Lcom/google/android/gms/internal/ads/Y;)V

    .line 296
    .line 297
    .line 298
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->d0:Lcom/google/android/gms/internal/ads/Y;

    .line 299
    .line 300
    :cond_e
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/KN;->e0:J

    .line 301
    .line 302
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->d0:Lcom/google/android/gms/internal/ads/Y;

    .line 303
    .line 304
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Y;->zzh()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/KN;->f0:Z

    .line 309
    .line 310
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/KN;->L:Lcom/google/android/gms/internal/ads/ON;

    .line 311
    .line 312
    invoke-virtual {v5, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/ON;->s(JZZ)V

    .line 313
    .line 314
    .line 315
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/KN;->Z:Z

    .line 316
    .line 317
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->U:Lcom/google/android/gms/internal/ads/uN;

    .line 318
    .line 319
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    .line 321
    .line 322
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/uN;->f(Lcom/google/android/gms/internal/ads/vN;)V

    .line 323
    .line 324
    .line 325
    :cond_f
    :goto_9
    return-void
.end method

.method public final r(I)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->c0:Lcom/google/android/gms/internal/ads/JN;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/JN;->d:[Z

    .line 7
    .line 8
    aget-boolean v2, v1, p1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/JN;->a:Lcom/google/android/gms/internal/ads/bO;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/bO;->a(I)Lcom/google/android/gms/internal/ads/Ve;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ve;->d:[Lcom/google/android/gms/internal/ads/p0;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    aget-object v5, v0, v2

    .line 22
    .line 23
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/va;->b(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/KN;->l0:J

    .line 30
    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/nL;

    .line 32
    .line 33
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    move-object v3, v0

    .line 43
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/nL;-><init>(ILcom/google/android/gms/internal/ads/p0;JJ)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->J:Lcom/google/android/gms/internal/ads/f8;

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/f8;->i(Lcom/google/android/gms/internal/ads/nL;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    aput-boolean v0, v1, p1

    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method public final s(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->c0:Lcom/google/android/gms/internal/ads/JN;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/JN;->b:[Z

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/KN;->n0:Z

    .line 9
    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    aget-boolean v0, v0, p1

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 17
    .line 18
    aget-object p1, v0, p1

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/TN;->q(Z)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const-wide/16 v1, 0x0

    .line 29
    .line 30
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->n0:Z

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/KN;->i0:Z

    .line 36
    .line 37
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/KN;->l0:J

    .line 38
    .line 39
    iput v0, p0, Lcom/google/android/gms/internal/ads/KN;->o0:I

    .line 40
    .line 41
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 42
    .line 43
    array-length v1, p1

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-ge v2, v1, :cond_1

    .line 46
    .line 47
    aget-object v3, p1, v2

    .line 48
    .line 49
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/TN;->o(Z)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/KN;->U:Lcom/google/android/gms/internal/ads/uN;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/uN;->c(Lcom/google/android/gms/internal/ads/VN;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_1
    return-void
.end method

.method public final t()V
    .locals 13

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/GN;

    .line 2
    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->G:Landroid/net/Uri;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/KN;->H:Lcom/google/android/gms/internal/ads/kC;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/KN;->P:Lcom/google/android/gms/internal/ads/bD;

    .line 8
    .line 9
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/KN;->Q:LG/c;

    .line 10
    .line 11
    move-object v0, v7

    .line 12
    move-object v1, p0

    .line 13
    move-object v5, p0

    .line 14
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/GN;-><init>(Lcom/google/android/gms/internal/ads/KN;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/kC;Lcom/google/android/gms/internal/ads/bD;Lcom/google/android/gms/internal/ads/N;LG/c;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->Z:Z

    .line 18
    .line 19
    const/4 v8, 0x0

    .line 20
    const/4 v9, 0x1

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->u()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lo3/r;->M(Z)V

    .line 28
    .line 29
    .line 30
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/KN;->e0:J

    .line 31
    .line 32
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    cmp-long v4, v0, v2

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    .line 42
    .line 43
    cmp-long v6, v4, v0

    .line 44
    .line 45
    if-gtz v6, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput-boolean v9, p0, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 49
    .line 50
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->d0:Lcom/google/android/gms/internal/ads/Y;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    .line 59
    .line 60
    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/Y;->b(J)Lcom/google/android/gms/internal/ads/X;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/X;->a:Lcom/google/android/gms/internal/ads/Z;

    .line 65
    .line 66
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    .line 67
    .line 68
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/Z;->b:J

    .line 69
    .line 70
    iget-object v6, v7, Lcom/google/android/gms/internal/ads/GN;->f:LW0/w;

    .line 71
    .line 72
    iput-wide v0, v6, LW0/w;->a:J

    .line 73
    .line 74
    iput-wide v4, v7, Lcom/google/android/gms/internal/ads/GN;->i:J

    .line 75
    .line 76
    iput-boolean v9, v7, Lcom/google/android/gms/internal/ads/GN;->h:Z

    .line 77
    .line 78
    iput-boolean v8, v7, Lcom/google/android/gms/internal/ads/GN;->l:Z

    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 81
    .line 82
    array-length v1, v0

    .line 83
    const/4 v4, 0x0

    .line 84
    :goto_1
    if-ge v4, v1, :cond_2

    .line 85
    .line 86
    aget-object v5, v0, v4

    .line 87
    .line 88
    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    .line 89
    .line 90
    iput-wide v10, v5, Lcom/google/android/gms/internal/ads/TN;->r:J

    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    .line 96
    .line 97
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->m()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    iput v0, p0, Lcom/google/android/gms/internal/ads/KN;->o0:I

    .line 102
    .line 103
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/KN;->O:Lcom/google/android/gms/internal/ads/JO;

    .line 104
    .line 105
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    const/4 v11, 0x0

    .line 116
    iput-object v11, v10, Lcom/google/android/gms/internal/ads/JO;->d:Ljava/io/IOException;

    .line 117
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v5

    .line 122
    new-instance v12, Lcom/google/android/gms/internal/ads/GO;

    .line 123
    .line 124
    move-object v0, v12

    .line 125
    move-object v1, v10

    .line 126
    move-object v3, v7

    .line 127
    move-object v4, p0

    .line 128
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/GO;-><init>(Lcom/google/android/gms/internal/ads/JO;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/GN;Lcom/google/android/gms/internal/ads/FO;J)V

    .line 129
    .line 130
    .line 131
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 132
    .line 133
    if-nez v0, :cond_4

    .line 134
    .line 135
    const/4 v8, 0x1

    .line 136
    :cond_4
    invoke-static {v8}, Lo3/r;->M(Z)V

    .line 137
    .line 138
    .line 139
    iput-object v12, v10, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 140
    .line 141
    iput-object v11, v12, Lcom/google/android/gms/internal/ads/GO;->I:Ljava/io/IOException;

    .line 142
    .line 143
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/JO;->a:Ljava/util/concurrent/ExecutorService;

    .line 144
    .line 145
    invoke-interface {v0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/GN;->j:Lcom/google/android/gms/internal/ads/CD;

    .line 149
    .line 150
    new-instance v1, Lcom/google/android/gms/internal/ads/pN;

    .line 151
    .line 152
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 153
    .line 154
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 155
    .line 156
    .line 157
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 158
    .line 159
    .line 160
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/GN;->i:J

    .line 161
    .line 162
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/KN;->e0:J

    .line 163
    .line 164
    new-instance v0, Lcom/google/android/gms/internal/ads/nL;

    .line 165
    .line 166
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 167
    .line 168
    .line 169
    move-result-wide v9

    .line 170
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 171
    .line 172
    .line 173
    move-result-wide v11

    .line 174
    const/4 v7, -0x1

    .line 175
    const/4 v8, 0x0

    .line 176
    move-object v6, v0

    .line 177
    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/nL;-><init>(ILcom/google/android/gms/internal/ads/p0;JJ)V

    .line 178
    .line 179
    .line 180
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/KN;->J:Lcom/google/android/gms/internal/ads/f8;

    .line 181
    .line 182
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/f8;->o(Lcom/google/android/gms/internal/ads/pN;Lcom/google/android/gms/internal/ads/nL;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public final u()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->i0:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final x()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/KN;->g0:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x6

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x3

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/KN;->O:Lcom/google/android/gms/internal/ads/JO;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/JO;->d:Ljava/io/IOException;

    .line 12
    .line 13
    if-nez v2, :cond_5

    .line 14
    .line 15
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GO;->I:Ljava/io/IOException;

    .line 20
    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget v1, v1, Lcom/google/android/gms/internal/ads/GO;->J:I

    .line 24
    .line 25
    if-gt v1, v0, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    throw v2

    .line 29
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->Z:Z

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    goto :goto_2

    .line 38
    :cond_3
    const-string v0, "Loading finished before preparation is complete."

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    throw v0

    .line 46
    :cond_4
    :goto_2
    return-void

    .line 47
    :cond_5
    throw v2
.end method

.method public final zzb()J
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->p()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 5
    .line 6
    const-wide/high16 v1, -0x8000000000000000L

    .line 7
    .line 8
    if-nez v0, :cond_7

    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/KN;->j0:I

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->u()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/KN;->m0:J

    .line 22
    .line 23
    return-wide v0

    .line 24
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->a0:Z

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    const-wide v4, 0x7fffffffffffffffL

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 35
    .line 36
    array-length v0, v0

    .line 37
    move-wide v7, v4

    .line 38
    const/4 v6, 0x0

    .line 39
    :goto_0
    if-ge v6, v0, :cond_4

    .line 40
    .line 41
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/KN;->c0:Lcom/google/android/gms/internal/ads/JN;

    .line 42
    .line 43
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/JN;->b:[Z

    .line 44
    .line 45
    aget-boolean v10, v10, v6

    .line 46
    .line 47
    if-eqz v10, :cond_2

    .line 48
    .line 49
    iget-object v9, v9, Lcom/google/android/gms/internal/ads/JN;->c:[Z

    .line 50
    .line 51
    aget-boolean v9, v9, v6

    .line 52
    .line 53
    if-eqz v9, :cond_2

    .line 54
    .line 55
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 56
    .line 57
    aget-object v9, v9, v6

    .line 58
    .line 59
    monitor-enter v9

    .line 60
    :try_start_0
    iget-boolean v10, v9, Lcom/google/android/gms/internal/ads/TN;->u:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    monitor-exit v9

    .line 63
    if-nez v10, :cond_2

    .line 64
    .line 65
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/KN;->W:[Lcom/google/android/gms/internal/ads/TN;

    .line 66
    .line 67
    aget-object v9, v9, v6

    .line 68
    .line 69
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/TN;->l()J

    .line 70
    .line 71
    .line 72
    move-result-wide v9

    .line 73
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    goto :goto_1

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    monitor-exit v9

    .line 80
    throw v0

    .line 81
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    move-wide v7, v4

    .line 85
    :cond_4
    cmp-long v0, v7, v4

    .line 86
    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/KN;->n(Z)J

    .line 90
    .line 91
    .line 92
    move-result-wide v7

    .line 93
    :cond_5
    cmp-long v0, v7, v1

    .line 94
    .line 95
    if-nez v0, :cond_6

    .line 96
    .line 97
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/KN;->l0:J

    .line 98
    .line 99
    return-wide v0

    .line 100
    :cond_6
    return-wide v7

    .line 101
    :cond_7
    :goto_2
    return-wide v1
.end method

.method public final zzc()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->zzb()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->i0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->p0:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->m()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/google/android/gms/internal/ads/KN;->o0:I

    .line 14
    .line 15
    if-le v0, v1, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/KN;->i0:Z

    .line 19
    .line 20
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/KN;->l0:J

    .line 21
    .line 22
    return-wide v0

    .line 23
    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    return-wide v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/bO;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/KN;->p()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->c0:Lcom/google/android/gms/internal/ads/JN;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/JN;->a:Lcom/google/android/gms/internal/ads/bO;

    .line 7
    .line 8
    return-object v0
.end method

.method public final zzp()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->O:Lcom/google/android/gms/internal/ads/JO;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/JO;->c:Lcom/google/android/gms/internal/ads/GO;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/KN;->Q:LG/c;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-boolean v1, v0, LG/c;->H:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0

    .line 19
    throw v1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method
