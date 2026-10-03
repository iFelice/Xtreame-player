.class public final Lcom/google/android/gms/internal/ads/lM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/TL;


# static fields
.field public static final Z:Ljava/lang/Object;

.field public static a0:Ljava/util/concurrent/ScheduledExecutorService;

.field public static b0:I


# instance fields
.field public A:J

.field public B:J

.field public C:I

.field public D:Z

.field public E:Z

.field public F:J

.field public G:F

.field public H:Ljava/nio/ByteBuffer;

.field public I:I

.field public J:Ljava/nio/ByteBuffer;

.field public K:Z

.field public L:Z

.field public M:Z

.field public N:Z

.field public O:I

.field public P:Lcom/google/android/gms/internal/ads/bK;

.field public Q:Lcom/google/android/gms/internal/ads/IL;

.field public R:J

.field public S:Z

.field public T:Landroid/os/Looper;

.field public U:J

.field public V:J

.field public W:Landroid/os/Handler;

.field public final X:Lcom/google/android/gms/internal/ads/bD;

.field public final Y:Lcom/google/android/gms/internal/ads/aM;

.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/XL;

.field public final c:Lcom/google/android/gms/internal/ads/sM;

.field public final d:Lcom/google/android/gms/internal/ads/PA;

.field public final e:Lcom/google/android/gms/internal/ads/PA;

.field public final f:Lcom/google/android/gms/internal/ads/WL;

.field public final g:Ljava/util/ArrayDeque;

.field public h:Lcom/google/android/gms/internal/ads/kM;

.field public final i:LD0/M;

.field public final j:LD0/M;

.field public k:Lcom/google/android/gms/internal/ads/zL;

.field public l:Lcom/google/android/gms/internal/ads/nM;

.field public m:Lcom/google/android/gms/internal/ads/fM;

.field public n:Lcom/google/android/gms/internal/ads/fM;

.field public o:Lcom/google/android/gms/internal/ads/Fh;

.field public p:Landroid/media/AudioTrack;

.field public q:Lcom/google/android/gms/internal/ads/EL;

.field public r:Lcom/google/android/gms/internal/ads/GL;

.field public s:Lcom/google/android/gms/internal/ads/iM;

.field public t:Lcom/google/android/gms/internal/ads/bH;

.field public u:Lcom/google/android/gms/internal/ads/gM;

.field public v:Lcom/google/android/gms/internal/ads/gM;

.field public w:Lcom/google/android/gms/internal/ads/ob;

.field public x:Z

.field public y:J

.field public z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/lM;->Z:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(La/x;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v2, p1, La/x;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v2, Landroid/content/Context;

    .line 9
    .line 10
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/lM;->a:Landroid/content/Context;

    .line 11
    .line 12
    sget-object v3, Lcom/google/android/gms/internal/ads/bH;->b:Lcom/google/android/gms/internal/ads/bH;

    .line 13
    .line 14
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/lM;->t:Lcom/google/android/gms/internal/ads/bH;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    sget-object v4, Lcom/google/android/gms/internal/ads/EL;->c:Lcom/google/android/gms/internal/ads/EL;

    .line 19
    .line 20
    sget v4, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/EL;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)Lcom/google/android/gms/internal/ads/EL;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v2, p1, La/x;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v2, Lcom/google/android/gms/internal/ads/EL;

    .line 31
    .line 32
    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/lM;->q:Lcom/google/android/gms/internal/ads/EL;

    .line 33
    .line 34
    iget-object v2, p1, La/x;->e:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v2, Lcom/google/android/gms/internal/ads/bD;

    .line 37
    .line 38
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/lM;->X:Lcom/google/android/gms/internal/ads/bD;

    .line 39
    .line 40
    sget v2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 41
    .line 42
    iget-object p1, p1, La/x;->f:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p1, Lcom/google/android/gms/internal/ads/aM;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->Y:Lcom/google/android/gms/internal/ads/aM;

    .line 50
    .line 51
    new-instance p1, Lcom/google/android/gms/internal/ads/WL;

    .line 52
    .line 53
    new-instance v2, Lcom/google/android/gms/internal/ads/bM;

    .line 54
    .line 55
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bM;-><init>(Lcom/google/android/gms/internal/ads/lM;)V

    .line 56
    .line 57
    .line 58
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/ads/WL;-><init>(Lcom/google/android/gms/internal/ads/bM;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->f:Lcom/google/android/gms/internal/ads/WL;

    .line 62
    .line 63
    new-instance p1, Lcom/google/android/gms/internal/ads/XL;

    .line 64
    .line 65
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Hi;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->b:Lcom/google/android/gms/internal/ads/XL;

    .line 69
    .line 70
    new-instance v2, Lcom/google/android/gms/internal/ads/sM;

    .line 71
    .line 72
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/Hi;-><init>()V

    .line 73
    .line 74
    .line 75
    sget-object v3, Lcom/google/android/gms/internal/ads/Et;->f:[B

    .line 76
    .line 77
    iput-object v3, v2, Lcom/google/android/gms/internal/ads/sM;->m:[B

    .line 78
    .line 79
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/lM;->c:Lcom/google/android/gms/internal/ads/sM;

    .line 80
    .line 81
    new-instance v3, Lcom/google/android/gms/internal/ads/Xi;

    .line 82
    .line 83
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/Hi;-><init>()V

    .line 84
    .line 85
    .line 86
    sget-object v4, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 87
    .line 88
    new-array v4, v1, [Ljava/lang/Object;

    .line 89
    .line 90
    aput-object v3, v4, v0

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    aput-object p1, v4, v3

    .line 94
    .line 95
    const/4 p1, 0x2

    .line 96
    aput-object v2, v4, p1

    .line 97
    .line 98
    invoke-static {v4, v1}, Lcom/google/android/gms/internal/ads/Cw;->O0([Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/uA;->s(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->d:Lcom/google/android/gms/internal/ads/PA;

    .line 106
    .line 107
    new-instance p1, Lcom/google/android/gms/internal/ads/rM;

    .line 108
    .line 109
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/Hi;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->e:Lcom/google/android/gms/internal/ads/PA;

    .line 117
    .line 118
    const/high16 p1, 0x3f800000    # 1.0f

    .line 119
    .line 120
    iput p1, p0, Lcom/google/android/gms/internal/ads/lM;->G:F

    .line 121
    .line 122
    iput v0, p0, Lcom/google/android/gms/internal/ads/lM;->O:I

    .line 123
    .line 124
    new-instance p1, Lcom/google/android/gms/internal/ads/bK;

    .line 125
    .line 126
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->P:Lcom/google/android/gms/internal/ads/bK;

    .line 130
    .line 131
    new-instance p1, Lcom/google/android/gms/internal/ads/gM;

    .line 132
    .line 133
    sget-object v7, Lcom/google/android/gms/internal/ads/ob;->d:Lcom/google/android/gms/internal/ads/ob;

    .line 134
    .line 135
    const-wide/16 v5, 0x0

    .line 136
    .line 137
    const-wide/16 v3, 0x0

    .line 138
    .line 139
    move-object v1, p1

    .line 140
    move-object v2, v7

    .line 141
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/gM;-><init>(Lcom/google/android/gms/internal/ads/ob;JJ)V

    .line 142
    .line 143
    .line 144
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->v:Lcom/google/android/gms/internal/ads/gM;

    .line 145
    .line 146
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/lM;->w:Lcom/google/android/gms/internal/ads/ob;

    .line 147
    .line 148
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lM;->x:Z

    .line 149
    .line 150
    new-instance p1, Ljava/util/ArrayDeque;

    .line 151
    .line 152
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 153
    .line 154
    .line 155
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->g:Ljava/util/ArrayDeque;

    .line 156
    .line 157
    new-instance p1, LD0/M;

    .line 158
    .line 159
    invoke-direct {p1}, LD0/M;-><init>()V

    .line 160
    .line 161
    .line 162
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->i:LD0/M;

    .line 163
    .line 164
    new-instance p1, LD0/M;

    .line 165
    .line 166
    invoke-direct {p1}, LD0/M;-><init>()V

    .line 167
    .line 168
    .line 169
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->j:LD0/M;

    .line 170
    .line 171
    return-void
.end method

.method public static j(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, LD0/a;->t(Landroid/media/AudioTrack;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return p0
.end method


# virtual methods
.method public final a()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/lM;->y:J

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/fM;->b:I

    .line 10
    .line 11
    int-to-long v3, v0

    .line 12
    div-long/2addr v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/lM;->z:J

    .line 15
    .line 16
    :goto_0
    return-wide v1
.end method

.method public final b()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/lM;->A:J

    .line 8
    .line 9
    iget v0, v0, Lcom/google/android/gms/internal/ads/fM;->d:I

    .line 10
    .line 11
    int-to-long v3, v0

    .line 12
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 13
    .line 14
    add-long/2addr v1, v3

    .line 15
    const-wide/16 v5, -0x1

    .line 16
    .line 17
    add-long/2addr v1, v5

    .line 18
    div-long/2addr v1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/lM;->B:J

    .line 21
    .line 22
    :goto_0
    return-wide v1
.end method

.method public final c(J)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/fM;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 10
    .line 11
    iget v4, v4, Lcom/google/android/gms/internal/ads/p0;->C:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v4, 0x0

    .line 16
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/lM;->X:Lcom/google/android/gms/internal/ads/bD;

    .line 17
    .line 18
    if-eqz v4, :cond_3

    .line 19
    .line 20
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->w:Lcom/google/android/gms/internal/ads/ob;

    .line 21
    .line 22
    iget-object v6, v5, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v6, Lcom/google/android/gms/internal/ads/Ti;

    .line 25
    .line 26
    iget v7, v4, Lcom/google/android/gms/internal/ads/ob;->a:F

    .line 27
    .line 28
    iget v8, v6, Lcom/google/android/gms/internal/ads/Ti;->c:F

    .line 29
    .line 30
    cmpl-float v8, v8, v7

    .line 31
    .line 32
    if-eqz v8, :cond_1

    .line 33
    .line 34
    iput v7, v6, Lcom/google/android/gms/internal/ads/Ti;->c:F

    .line 35
    .line 36
    iput-boolean v3, v6, Lcom/google/android/gms/internal/ads/Ti;->i:Z

    .line 37
    .line 38
    :cond_1
    iget v7, v6, Lcom/google/android/gms/internal/ads/Ti;->d:F

    .line 39
    .line 40
    iget v8, v4, Lcom/google/android/gms/internal/ads/ob;->b:F

    .line 41
    .line 42
    cmpl-float v7, v7, v8

    .line 43
    .line 44
    if-eqz v7, :cond_2

    .line 45
    .line 46
    iput v8, v6, Lcom/google/android/gms/internal/ads/Ti;->d:F

    .line 47
    .line 48
    iput-boolean v3, v6, Lcom/google/android/gms/internal/ads/Ti;->i:Z

    .line 49
    .line 50
    :cond_2
    :goto_1
    move-object v7, v4

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/ads/ob;->d:Lcom/google/android/gms/internal/ads/ob;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :goto_2
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/lM;->w:Lcom/google/android/gms/internal/ads/ob;

    .line 56
    .line 57
    if-nez v1, :cond_4

    .line 58
    .line 59
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fM;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 60
    .line 61
    iget v0, v0, Lcom/google/android/gms/internal/ads/p0;->C:I

    .line 62
    .line 63
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/lM;->x:Z

    .line 64
    .line 65
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, Lcom/google/android/gms/internal/ads/qM;

    .line 68
    .line 69
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/qM;->j:Z

    .line 70
    .line 71
    :cond_4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/lM;->x:Z

    .line 72
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->g:Ljava/util/ArrayDeque;

    .line 74
    .line 75
    new-instance v1, Lcom/google/android/gms/internal/ads/gM;

    .line 76
    .line 77
    const-wide/16 v2, 0x0

    .line 78
    .line 79
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lM;->b()J

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    iget p1, p1, Lcom/google/android/gms/internal/ads/fM;->e:I

    .line 90
    .line 91
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 92
    .line 93
    .line 94
    move-result-wide v10

    .line 95
    move-object v6, v1

    .line 96
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/gM;-><init>(Lcom/google/android/gms/internal/ads/ob;JJ)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/fM;->i:Lcom/google/android/gms/internal/ads/Fh;

    .line 105
    .line 106
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Fh;->b()V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 112
    .line 113
    if-eqz p1, :cond_5

    .line 114
    .line 115
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/lM;->x:Z

    .line 116
    .line 117
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/nM;->a:Lcom/google/android/gms/internal/ads/oM;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/oM;->y0:Lcom/google/android/gms/internal/ads/oL;

    .line 120
    .line 121
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v0, Landroid/os/Handler;

    .line 124
    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    new-instance v1, Lc0/a;

    .line 128
    .line 129
    const/4 v2, 0x7

    .line 130
    invoke-direct {v1, v2, p1, p2}, Lc0/a;-><init>(ILjava/lang/Object;Z)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    :cond_5
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->r:Lcom/google/android/gms/internal/ads/GL;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lM;->T:Landroid/os/Looper;

    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/GL;

    .line 16
    .line 17
    new-instance v2, Lcom/google/android/gms/internal/ads/bM;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/bM;-><init>(Lcom/google/android/gms/internal/ads/lM;)V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lM;->t:Lcom/google/android/gms/internal/ads/bH;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->Q:Lcom/google/android/gms/internal/ads/IL;

    .line 25
    .line 26
    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/GL;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bM;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lM;->r:Lcom/google/android/gms/internal/ads/GL;

    .line 30
    .line 31
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/GL;->i:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/GL;->f:Lcom/google/android/gms/internal/ads/EL;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/GL;->i:Z

    .line 43
    .line 44
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/GL;->e:LD0/e;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v2, v0, LD0/e;->c:Landroid/net/Uri;

    .line 49
    .line 50
    const/4 v3, 0x0

    .line 51
    iget-object v4, v0, LD0/e;->b:Landroid/content/ContentResolver;

    .line 52
    .line 53
    invoke-virtual {v4, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 57
    .line 58
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GL;->b:Landroid/os/Handler;

    .line 59
    .line 60
    const/16 v3, 0x17

    .line 61
    .line 62
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/GL;->a:Landroid/content/Context;

    .line 63
    .line 64
    if-lt v0, v3, :cond_2

    .line 65
    .line 66
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/GL;->c:LB0/r;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/ads/FL;->a(Landroid/content/Context;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    .line 74
    .line 75
    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    .line 76
    .line 77
    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/GL;->d:Lf/G;

    .line 82
    .line 83
    invoke-virtual {v4, v5, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/GL;->h:Lcom/google/android/gms/internal/ads/bH;

    .line 88
    .line 89
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/GL;->g:Lcom/google/android/gms/internal/ads/IL;

    .line 90
    .line 91
    invoke-static {v4, v0, v2, v3}, Lcom/google/android/gms/internal/ads/EL;->c(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)Lcom/google/android/gms/internal/ads/EL;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/GL;->f:Lcom/google/android/gms/internal/ads/EL;

    .line 96
    .line 97
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->q:Lcom/google/android/gms/internal/ads/EL;

    .line 98
    .line 99
    :cond_3
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lM;->L:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lM;->L:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lM;->b()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lM;->f:Lcom/google/android/gms/internal/ads/WL;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/WL;->d()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/WL;->z:J

    .line 19
    .line 20
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/WL;->G:Lcom/google/android/gms/internal/ads/pl;

    .line 21
    .line 22
    check-cast v3, Lcom/google/android/gms/internal/ads/Nr;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/WL;->x:J

    .line 36
    .line 37
    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/WL;->A:J

    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/lM;->j(Landroid/media/AudioTrack;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lM;->M:Z

    .line 49
    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public final f(J)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Fh;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Fh;->d()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_6

    .line 16
    .line 17
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Fh;->e()Z

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_2

    .line 24
    .line 25
    sget-object p1, Lcom/google/android/gms/internal/ads/ti;->a:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Fh;->f()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    aget-object p2, p2, v0

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    move-object p1, p2

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    sget-object p2, Lcom/google/android/gms/internal/ads/ti;->a:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Fh;->g(Ljava/nio/ByteBuffer;)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Fh;->f()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    aget-object p1, p2, p1

    .line 56
    .line 57
    :goto_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/lM;->g(Ljava/nio/ByteBuffer;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->H:Ljava/nio/ByteBuffer;

    .line 74
    .line 75
    if-eqz p1, :cond_6

    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_6

    .line 82
    .line 83
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 84
    .line 85
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/lM;->H:Ljava/nio/ByteBuffer;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/Fh;->e()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/Fh;->d:Z

    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/Fh;->g(Ljava/nio/ByteBuffer;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_6
    :goto_2
    return-void

    .line 103
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->H:Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    if-nez p1, :cond_8

    .line 106
    .line 107
    sget-object p1, Lcom/google/android/gms/internal/ads/ti;->a:Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/lM;->g(Ljava/nio/ByteBuffer;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_6

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->J:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    if-ne v0, p1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->J:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->j:LD0/M;

    .line 27
    .line 28
    iget-object v3, v0, LD0/M;->a:Ljava/lang/Exception;

    .line 29
    .line 30
    if-nez v3, :cond_3

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    sget-object v3, Lcom/google/android/gms/internal/ads/lM;->Z:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v3

    .line 36
    :try_start_0
    sget v4, Lcom/google/android/gms/internal/ads/lM;->b0:I

    .line 37
    .line 38
    if-lez v4, :cond_4

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    goto :goto_2

    .line 42
    :cond_4
    const/4 v4, 0x0

    .line 43
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v4, :cond_5

    .line 45
    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    iget-wide v5, v0, LD0/M;->c:J

    .line 53
    .line 54
    cmp-long v7, v3, v5

    .line 55
    .line 56
    if-gez v7, :cond_6

    .line 57
    .line 58
    goto/16 :goto_6

    .line 59
    .line 60
    :cond_6
    :goto_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 65
    .line 66
    invoke-virtual {v4, p1, v3, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 71
    .line 72
    .line 73
    move-result-wide v5

    .line 74
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/lM;->R:J

    .line 75
    .line 76
    if-gez v4, :cond_e

    .line 77
    .line 78
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 79
    .line 80
    const/16 v3, 0x18

    .line 81
    .line 82
    if-lt p1, v3, :cond_7

    .line 83
    .line 84
    const/4 p1, -0x6

    .line 85
    if-eq v4, p1, :cond_8

    .line 86
    .line 87
    :cond_7
    const/16 p1, -0x20

    .line 88
    .line 89
    if-ne v4, p1, :cond_b

    .line 90
    .line 91
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lM;->b()J

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    const-wide/16 v7, 0x0

    .line 96
    .line 97
    cmp-long p1, v5, v7

    .line 98
    .line 99
    if-lez p1, :cond_a

    .line 100
    .line 101
    :cond_9
    :goto_4
    const/4 v1, 0x1

    .line 102
    goto :goto_5

    .line 103
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/lM;->j(Landroid/media/AudioTrack;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_b

    .line 110
    .line 111
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 112
    .line 113
    iget p1, p1, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 114
    .line 115
    if-ne p1, v2, :cond_9

    .line 116
    .line 117
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/lM;->S:Z

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_b
    :goto_5
    new-instance p1, Lcom/google/android/gms/internal/ads/SL;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 123
    .line 124
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/fM;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 125
    .line 126
    invoke-direct {p1, v4, v2, v1}, Lcom/google/android/gms/internal/ads/SL;-><init>(ILcom/google/android/gms/internal/ads/p0;Z)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 130
    .line 131
    if-eqz v1, :cond_c

    .line 132
    .line 133
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/nM;->a(Ljava/lang/Exception;)V

    .line 134
    .line 135
    .line 136
    :cond_c
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/SL;->H:Z

    .line 137
    .line 138
    if-nez v1, :cond_d

    .line 139
    .line 140
    invoke-virtual {v0, p1}, LD0/M;->b(Ljava/lang/Exception;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_d
    sget-object v0, Lcom/google/android/gms/internal/ads/EL;->c:Lcom/google/android/gms/internal/ads/EL;

    .line 145
    .line 146
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->q:Lcom/google/android/gms/internal/ads/EL;

    .line 147
    .line 148
    throw p1

    .line 149
    :cond_e
    const/4 v5, 0x0

    .line 150
    iput-object v5, v0, LD0/M;->a:Ljava/lang/Exception;

    .line 151
    .line 152
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    iput-wide v6, v0, LD0/M;->b:J

    .line 158
    .line 159
    iput-wide v6, v0, LD0/M;->c:J

    .line 160
    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/lM;->j(Landroid/media/AudioTrack;)Z

    .line 164
    .line 165
    .line 166
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 167
    .line 168
    iget v0, v0, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 169
    .line 170
    if-nez v0, :cond_f

    .line 171
    .line 172
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/lM;->A:J

    .line 173
    .line 174
    int-to-long v8, v4

    .line 175
    add-long/2addr v6, v8

    .line 176
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/lM;->A:J

    .line 177
    .line 178
    :cond_f
    if-ne v4, v3, :cond_12

    .line 179
    .line 180
    if-eqz v0, :cond_11

    .line 181
    .line 182
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->H:Ljava/nio/ByteBuffer;

    .line 183
    .line 184
    if-ne p1, v0, :cond_10

    .line 185
    .line 186
    const/4 v1, 0x1

    .line 187
    :cond_10
    invoke-static {v1}, Lo3/r;->M(Z)V

    .line 188
    .line 189
    .line 190
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/lM;->B:J

    .line 191
    .line 192
    iget p1, p0, Lcom/google/android/gms/internal/ads/lM;->C:I

    .line 193
    .line 194
    int-to-long v2, p1

    .line 195
    iget p1, p0, Lcom/google/android/gms/internal/ads/lM;->I:I

    .line 196
    .line 197
    int-to-long v6, p1

    .line 198
    mul-long v2, v2, v6

    .line 199
    .line 200
    add-long/2addr v2, v0

    .line 201
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/lM;->B:J

    .line 202
    .line 203
    :cond_11
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/lM;->J:Ljava/nio/ByteBuffer;

    .line 204
    .line 205
    :cond_12
    :goto_6
    return-void

    .line 206
    :catchall_0
    move-exception p1

    .line 207
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    throw p1
.end method

.method public final h()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fh;->e()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->J:Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return v2

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/lM;->g(Ljava/nio/ByteBuffer;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->J:Ljava/nio/ByteBuffer;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v2

    .line 24
    :cond_1
    return v1

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fh;->e()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_4

    .line 32
    .line 33
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/Fh;->d:Z

    .line 34
    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/Fh;->d:Z

    .line 39
    .line 40
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Fh;->b:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/google/android/gms/internal/ads/ti;

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ti;->zzd()V

    .line 49
    .line 50
    .line 51
    :cond_4
    :goto_0
    const-wide/high16 v3, -0x8000000000000000L

    .line 52
    .line 53
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gms/internal/ads/lM;->f(J)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fh;->d()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_7

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->J:Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    return v2

    .line 76
    :cond_6
    const/4 v1, 0x1

    .line 77
    :cond_7
    :goto_1
    return v1
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k(Lcom/google/android/gms/internal/ads/p0;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lM;->d()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "audio/raw"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget p1, p1, Lcom/google/android/gms/internal/ads/p0;->C:I

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Et;->c(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string v0, "Invalid PCM encoding: "

    .line 25
    .line 26
    const-string v2, "DefaultAudioSink"

    .line 27
    .line 28
    invoke-static {v0, p1, v2}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    if-eq p1, v2, :cond_1

    .line 33
    .line 34
    const/4 p1, 0x1

    .line 35
    return p1

    .line 36
    :cond_1
    return v2

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->q:Lcom/google/android/gms/internal/ads/EL;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/lM;->t:Lcom/google/android/gms/internal/ads/bH;

    .line 40
    .line 41
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/ads/EL;->a(Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/bH;)Landroid/util/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    .line 47
    return v2

    .line 48
    :cond_3
    return v1
.end method

.method public final l(Lcom/google/android/gms/internal/ads/p0;[I)V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->d()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "audio/raw"

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x2

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, -0x1

    .line 19
    iget v6, v3, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v0, v3, Lcom/google/android/gms/internal/ads/p0;->C:I

    .line 24
    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Et;->c(I)Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    invoke-static {v7}, Lo3/r;->J(Z)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Et;->o(I)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    iget v8, v3, Lcom/google/android/gms/internal/ads/p0;->A:I

    .line 37
    .line 38
    mul-int v7, v7, v8

    .line 39
    .line 40
    new-instance v9, Lcom/google/android/gms/internal/ads/rA;

    .line 41
    .line 42
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/lM;->d:Lcom/google/android/gms/internal/ads/PA;

    .line 46
    .line 47
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/oA;->d(Ljava/lang/Iterable;)V

    .line 48
    .line 49
    .line 50
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/lM;->X:Lcom/google/android/gms/internal/ads/bD;

    .line 51
    .line 52
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v10, [Lcom/google/android/gms/internal/ads/ti;

    .line 55
    .line 56
    invoke-static {v10, v2}, Lcom/google/android/gms/internal/ads/Cw;->O0([Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    iget v11, v9, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 60
    .line 61
    add-int/2addr v11, v2

    .line 62
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/oA;->f(I)V

    .line 63
    .line 64
    .line 65
    iget-object v11, v9, Lcom/google/android/gms/internal/ads/oA;->a:[Ljava/lang/Object;

    .line 66
    .line 67
    iget v12, v9, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 68
    .line 69
    invoke-static {v10, v4, v11, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .line 71
    .line 72
    iget v10, v9, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 73
    .line 74
    add-int/2addr v10, v2

    .line 75
    iput v10, v9, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 76
    .line 77
    new-instance v2, Lcom/google/android/gms/internal/ads/Fh;

    .line 78
    .line 79
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/Fh;-><init>(Lcom/google/android/gms/internal/ads/PA;)V

    .line 84
    .line 85
    .line 86
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 87
    .line 88
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/Fh;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eqz v9, :cond_0

    .line 93
    .line 94
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 95
    .line 96
    :cond_0
    iget v9, v3, Lcom/google/android/gms/internal/ads/p0;->D:I

    .line 97
    .line 98
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/lM;->c:Lcom/google/android/gms/internal/ads/sM;

    .line 99
    .line 100
    iput v9, v10, Lcom/google/android/gms/internal/ads/sM;->i:I

    .line 101
    .line 102
    iget v9, v3, Lcom/google/android/gms/internal/ads/p0;->E:I

    .line 103
    .line 104
    iput v9, v10, Lcom/google/android/gms/internal/ads/sM;->j:I

    .line 105
    .line 106
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/lM;->b:Lcom/google/android/gms/internal/ads/XL;

    .line 107
    .line 108
    move-object/from16 v10, p2

    .line 109
    .line 110
    iput-object v10, v9, Lcom/google/android/gms/internal/ads/XL;->i:[I

    .line 111
    .line 112
    new-instance v9, Lcom/google/android/gms/internal/ads/Th;

    .line 113
    .line 114
    invoke-direct {v9, v6, v8, v0}, Lcom/google/android/gms/internal/ads/Th;-><init>(III)V

    .line 115
    .line 116
    .line 117
    :try_start_0
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/Fh;->a(Lcom/google/android/gms/internal/ads/Th;)Lcom/google/android/gms/internal/ads/Th;

    .line 118
    .line 119
    .line 120
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/ei; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    iget v6, v0, Lcom/google/android/gms/internal/ads/Th;->b:I

    .line 122
    .line 123
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Et;->n(I)I

    .line 124
    .line 125
    .line 126
    move-result v8

    .line 127
    iget v9, v0, Lcom/google/android/gms/internal/ads/Th;->c:I

    .line 128
    .line 129
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/Et;->o(I)I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    mul-int v10, v10, v6

    .line 134
    .line 135
    iget v0, v0, Lcom/google/android/gms/internal/ads/Th;->a:I

    .line 136
    .line 137
    move-object v11, v2

    .line 138
    move v2, v9

    .line 139
    move v6, v10

    .line 140
    move v9, v8

    .line 141
    move v8, v0

    .line 142
    const/4 v0, 0x0

    .line 143
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    move-object v2, v0

    .line 146
    new-instance v0, Lcom/google/android/gms/internal/ads/QL;

    .line 147
    .line 148
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/QL;-><init>(Lcom/google/android/gms/internal/ads/ei;Lcom/google/android/gms/internal/ads/p0;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Fh;

    .line 153
    .line 154
    sget-object v7, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 155
    .line 156
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/Fh;-><init>(Lcom/google/android/gms/internal/ads/PA;)V

    .line 157
    .line 158
    .line 159
    sget-object v7, Lcom/google/android/gms/internal/ads/JL;->d:Lcom/google/android/gms/internal/ads/JL;

    .line 160
    .line 161
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/lM;->q:Lcom/google/android/gms/internal/ads/EL;

    .line 162
    .line 163
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/lM;->t:Lcom/google/android/gms/internal/ads/bH;

    .line 164
    .line 165
    invoke-virtual {v7, v3, v8}, Lcom/google/android/gms/internal/ads/EL;->a(Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/bH;)Landroid/util/Pair;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    if-eqz v7, :cond_12

    .line 170
    .line 171
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v8, Ljava/lang/Integer;

    .line 174
    .line 175
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v7, Ljava/lang/Integer;

    .line 182
    .line 183
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    move-object v11, v0

    .line 188
    move v8, v6

    .line 189
    move v2, v9

    .line 190
    const/4 v0, 0x2

    .line 191
    const/4 v6, -0x1

    .line 192
    move v9, v7

    .line 193
    const/4 v7, -0x1

    .line 194
    :goto_0
    const-string v10, ") for: "

    .line 195
    .line 196
    if-eqz v2, :cond_11

    .line 197
    .line 198
    if-eqz v9, :cond_10

    .line 199
    .line 200
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 201
    .line 202
    const-string v12, "audio/vnd.dts.hd;profile=lbr"

    .line 203
    .line 204
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v10

    .line 208
    iget v12, v3, Lcom/google/android/gms/internal/ads/p0;->i:I

    .line 209
    .line 210
    if-eqz v10, :cond_2

    .line 211
    .line 212
    if-ne v12, v5, :cond_2

    .line 213
    .line 214
    const v12, 0xbb800

    .line 215
    .line 216
    .line 217
    :cond_2
    invoke-static {v8, v9, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    const/4 v13, -0x2

    .line 222
    const/4 v14, 0x1

    .line 223
    if-eq v10, v13, :cond_3

    .line 224
    .line 225
    const/4 v13, 0x1

    .line 226
    goto :goto_1

    .line 227
    :cond_3
    const/4 v13, 0x0

    .line 228
    :goto_1
    invoke-static {v13}, Lo3/r;->M(Z)V

    .line 229
    .line 230
    .line 231
    if-eq v6, v5, :cond_4

    .line 232
    .line 233
    move v13, v6

    .line 234
    goto :goto_2

    .line 235
    :cond_4
    const/4 v13, 0x1

    .line 236
    :goto_2
    if-eqz v0, :cond_e

    .line 237
    .line 238
    if-eq v0, v14, :cond_d

    .line 239
    .line 240
    const/4 v4, 0x5

    .line 241
    const/16 v15, 0x8

    .line 242
    .line 243
    if-ne v2, v4, :cond_5

    .line 244
    .line 245
    const v4, 0x7a120

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :cond_5
    if-ne v2, v15, :cond_6

    .line 250
    .line 251
    const v4, 0xf4240

    .line 252
    .line 253
    .line 254
    const/16 v2, 0x8

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :cond_6
    const v4, 0x3d090

    .line 258
    .line 259
    .line 260
    :goto_3
    if-eq v12, v5, :cond_c

    .line 261
    .line 262
    sget-object v5, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 263
    .line 264
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 265
    .line 266
    .line 267
    div-int/lit8 v18, v12, 0x8

    .line 268
    .line 269
    mul-int/lit8 v19, v18, 0x8

    .line 270
    .line 271
    sub-int v19, v12, v19

    .line 272
    .line 273
    if-nez v19, :cond_7

    .line 274
    .line 275
    goto :goto_6

    .line 276
    :cond_7
    xor-int/2addr v12, v15

    .line 277
    sget-object v20, Lcom/google/android/gms/internal/ads/nB;->a:[I

    .line 278
    .line 279
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 280
    .line 281
    .line 282
    move-result v21

    .line 283
    aget v20, v20, v21

    .line 284
    .line 285
    shr-int/lit8 v12, v12, 0x1f

    .line 286
    .line 287
    or-int/2addr v12, v14

    .line 288
    packed-switch v20, :pswitch_data_0

    .line 289
    .line 290
    .line 291
    new-instance v0, Ljava/lang/AssertionError;

    .line 292
    .line 293
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .line 294
    .line 295
    .line 296
    throw v0

    .line 297
    :pswitch_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    .line 298
    .line 299
    .line 300
    move-result v19

    .line 301
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    .line 302
    .line 303
    .line 304
    move-result v15

    .line 305
    sub-int v15, v15, v19

    .line 306
    .line 307
    sub-int v19, v19, v15

    .line 308
    .line 309
    if-nez v19, :cond_9

    .line 310
    .line 311
    sget-object v15, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 312
    .line 313
    if-eq v5, v15, :cond_a

    .line 314
    .line 315
    sget-object v15, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 316
    .line 317
    if-ne v5, v15, :cond_8

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_8
    const/4 v14, 0x0

    .line 321
    :goto_4
    and-int/lit8 v5, v18, 0x1

    .line 322
    .line 323
    and-int/2addr v5, v14

    .line 324
    if-eqz v5, :cond_b

    .line 325
    .line 326
    goto :goto_5

    .line 327
    :cond_9
    if-lez v19, :cond_b

    .line 328
    .line 329
    goto :goto_5

    .line 330
    :pswitch_1
    if-lez v12, :cond_b

    .line 331
    .line 332
    goto :goto_5

    .line 333
    :pswitch_2
    if-gez v12, :cond_b

    .line 334
    .line 335
    :cond_a
    :goto_5
    :pswitch_3
    add-int v18, v18, v12

    .line 336
    .line 337
    :cond_b
    :goto_6
    :pswitch_4
    move/from16 v5, v18

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :pswitch_5
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 341
    .line 342
    const-string v2, "mode was UNNECESSARY, but rounding was necessary"

    .line 343
    .line 344
    invoke-direct {v0, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    throw v0

    .line 348
    :cond_c
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/GH;->c(I)I

    .line 349
    .line 350
    .line 351
    move-result v18

    .line 352
    goto :goto_6

    .line 353
    :goto_7
    int-to-long v14, v4

    .line 354
    int-to-long v4, v5

    .line 355
    mul-long v14, v14, v4

    .line 356
    .line 357
    const-wide/32 v4, 0xf4240

    .line 358
    .line 359
    .line 360
    div-long/2addr v14, v4

    .line 361
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/Cw;->w0(J)I

    .line 362
    .line 363
    .line 364
    move-result v4

    .line 365
    :goto_8
    move/from16 v18, v8

    .line 366
    .line 367
    move/from16 v19, v9

    .line 368
    .line 369
    move v9, v2

    .line 370
    goto :goto_9

    .line 371
    :cond_d
    const-wide/32 v4, 0xf4240

    .line 372
    .line 373
    .line 374
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/GH;->c(I)I

    .line 375
    .line 376
    .line 377
    move-result v12

    .line 378
    int-to-long v14, v12

    .line 379
    const-wide/32 v16, 0x2faf080

    .line 380
    .line 381
    .line 382
    mul-long v14, v14, v16

    .line 383
    .line 384
    div-long/2addr v14, v4

    .line 385
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/Cw;->w0(J)I

    .line 386
    .line 387
    .line 388
    move-result v4

    .line 389
    goto :goto_8

    .line 390
    :cond_e
    const-wide/32 v4, 0xf4240

    .line 391
    .line 392
    .line 393
    mul-int/lit8 v12, v10, 0x4

    .line 394
    .line 395
    const v14, 0x3d090

    .line 396
    .line 397
    .line 398
    int-to-long v14, v14

    .line 399
    int-to-long v4, v8

    .line 400
    mul-long v14, v14, v4

    .line 401
    .line 402
    move/from16 p2, v2

    .line 403
    .line 404
    int-to-long v2, v13

    .line 405
    mul-long v14, v14, v2

    .line 406
    .line 407
    const-wide/32 v16, 0xf4240

    .line 408
    .line 409
    .line 410
    div-long v14, v14, v16

    .line 411
    .line 412
    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/Cw;->w0(J)I

    .line 413
    .line 414
    .line 415
    move-result v14

    .line 416
    const v15, 0xb71b0

    .line 417
    .line 418
    .line 419
    move/from16 v18, v8

    .line 420
    .line 421
    move/from16 v19, v9

    .line 422
    .line 423
    int-to-long v8, v15

    .line 424
    mul-long v8, v8, v4

    .line 425
    .line 426
    mul-long v8, v8, v2

    .line 427
    .line 428
    div-long v8, v8, v16

    .line 429
    .line 430
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/Cw;->w0(J)I

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    .line 439
    .line 440
    .line 441
    move-result v4

    .line 442
    move/from16 v9, p2

    .line 443
    .line 444
    :goto_9
    int-to-double v2, v4

    .line 445
    double-to-int v2, v2

    .line 446
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    add-int/2addr v2, v13

    .line 451
    const/4 v3, -0x1

    .line 452
    add-int/2addr v2, v3

    .line 453
    div-int/2addr v2, v13

    .line 454
    mul-int v10, v2, v13

    .line 455
    .line 456
    const/4 v2, 0x0

    .line 457
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/lM;->S:Z

    .line 458
    .line 459
    new-instance v12, Lcom/google/android/gms/internal/ads/fM;

    .line 460
    .line 461
    move-object v2, v12

    .line 462
    move-object/from16 v3, p1

    .line 463
    .line 464
    move v4, v7

    .line 465
    move v5, v0

    .line 466
    move/from16 v7, v18

    .line 467
    .line 468
    move/from16 v8, v19

    .line 469
    .line 470
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/fM;-><init>(Lcom/google/android/gms/internal/ads/p0;IIIIIIILcom/google/android/gms/internal/ads/Fh;)V

    .line 471
    .line 472
    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 474
    .line 475
    .line 476
    move-result v0

    .line 477
    if-eqz v0, :cond_f

    .line 478
    .line 479
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/lM;->m:Lcom/google/android/gms/internal/ads/fM;

    .line 480
    .line 481
    return-void

    .line 482
    :cond_f
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 483
    .line 484
    return-void

    .line 485
    :cond_10
    new-instance v2, Lcom/google/android/gms/internal/ads/QL;

    .line 486
    .line 487
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    const-string v5, "Invalid output channel config (mode="

    .line 494
    .line 495
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    move-object/from16 v3, p1

    .line 512
    .line 513
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/QL;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/p0;)V

    .line 514
    .line 515
    .line 516
    throw v2

    .line 517
    :cond_11
    new-instance v2, Lcom/google/android/gms/internal/ads/QL;

    .line 518
    .line 519
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v4

    .line 523
    new-instance v5, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    const-string v6, "Invalid output encoding (mode="

    .line 526
    .line 527
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/QL;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/p0;)V

    .line 544
    .line 545
    .line 546
    throw v2

    .line 547
    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/QL;

    .line 548
    .line 549
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    const-string v4, "Unable to configure passthrough for: "

    .line 554
    .line 555
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/QL;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/p0;)V

    .line 560
    .line 561
    .line 562
    throw v0

    .line 563
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final m()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/lM;->y:J

    .line 11
    .line 12
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/lM;->z:J

    .line 13
    .line 14
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/lM;->A:J

    .line 15
    .line 16
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/lM;->B:J

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/google/android/gms/internal/ads/lM;->C:I

    .line 20
    .line 21
    new-instance v10, Lcom/google/android/gms/internal/ads/gM;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/lM;->w:Lcom/google/android/gms/internal/ads/ob;

    .line 24
    .line 25
    const-wide/16 v8, 0x0

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    move-object v4, v10

    .line 30
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/gM;-><init>(Lcom/google/android/gms/internal/ads/ob;JJ)V

    .line 31
    .line 32
    .line 33
    iput-object v10, p0, Lcom/google/android/gms/internal/ads/lM;->v:Lcom/google/android/gms/internal/ads/gM;

    .line 34
    .line 35
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/lM;->F:J

    .line 36
    .line 37
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lM;->u:Lcom/google/android/gms/internal/ads/gM;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->g:Ljava/util/ArrayDeque;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lM;->H:Ljava/nio/ByteBuffer;

    .line 45
    .line 46
    iput v0, p0, Lcom/google/android/gms/internal/ads/lM;->I:I

    .line 47
    .line 48
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lM;->J:Ljava/nio/ByteBuffer;

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lM;->L:Z

    .line 51
    .line 52
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lM;->K:Z

    .line 53
    .line 54
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lM;->M:Z

    .line 55
    .line 56
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->c:Lcom/google/android/gms/internal/ads/sM;

    .line 57
    .line 58
    iput-wide v2, v4, Lcom/google/android/gms/internal/ads/sM;->o:J

    .line 59
    .line 60
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 61
    .line 62
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/fM;->i:Lcom/google/android/gms/internal/ads/Fh;

    .line 63
    .line 64
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 65
    .line 66
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Fh;->b()V

    .line 67
    .line 68
    .line 69
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->f:Lcom/google/android/gms/internal/ads/WL;

    .line 70
    .line 71
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/WL;->c:Landroid/media/AudioTrack;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const/4 v5, 0x3

    .line 81
    if-ne v4, v5, :cond_0

    .line 82
    .line 83
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 84
    .line 85
    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    .line 86
    .line 87
    .line 88
    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 89
    .line 90
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/lM;->j(Landroid/media/AudioTrack;)Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    if-eqz v4, :cond_1

    .line 95
    .line 96
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->h:Lcom/google/android/gms/internal/ads/kM;

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/kM;->b(Landroid/media/AudioTrack;)V

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    new-instance v9, Lcom/google/android/gms/internal/ads/GH;

    .line 112
    .line 113
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->m:Lcom/google/android/gms/internal/ads/fM;

    .line 117
    .line 118
    if-eqz v4, :cond_2

    .line 119
    .line 120
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 121
    .line 122
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lM;->m:Lcom/google/android/gms/internal/ads/fM;

    .line 123
    .line 124
    :cond_2
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lM;->f:Lcom/google/android/gms/internal/ads/WL;

    .line 125
    .line 126
    iput-wide v2, v4, Lcom/google/android/gms/internal/ads/WL;->k:J

    .line 127
    .line 128
    iput v0, v4, Lcom/google/android/gms/internal/ads/WL;->w:I

    .line 129
    .line 130
    iput v0, v4, Lcom/google/android/gms/internal/ads/WL;->v:I

    .line 131
    .line 132
    iput-wide v2, v4, Lcom/google/android/gms/internal/ads/WL;->l:J

    .line 133
    .line 134
    iput-wide v2, v4, Lcom/google/android/gms/internal/ads/WL;->C:J

    .line 135
    .line 136
    iput-wide v2, v4, Lcom/google/android/gms/internal/ads/WL;->F:J

    .line 137
    .line 138
    iput-boolean v0, v4, Lcom/google/android/gms/internal/ads/WL;->j:Z

    .line 139
    .line 140
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/WL;->c:Landroid/media/AudioTrack;

    .line 141
    .line 142
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/WL;->e:Lcom/google/android/gms/internal/ads/VL;

    .line 143
    .line 144
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 145
    .line 146
    const/16 v4, 0x18

    .line 147
    .line 148
    if-lt v0, v4, :cond_3

    .line 149
    .line 150
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->s:Lcom/google/android/gms/internal/ads/iM;

    .line 151
    .line 152
    if-eqz v0, :cond_3

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iM;->b()V

    .line 155
    .line 156
    .line 157
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lM;->s:Lcom/google/android/gms/internal/ads/iM;

    .line 158
    .line 159
    :cond_3
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 160
    .line 161
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 162
    .line 163
    new-instance v8, Landroid/os/Handler;

    .line 164
    .line 165
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    .line 171
    .line 172
    sget-object v0, Lcom/google/android/gms/internal/ads/lM;->Z:Ljava/lang/Object;

    .line 173
    .line 174
    monitor-enter v0

    .line 175
    :try_start_0
    sget-object v4, Lcom/google/android/gms/internal/ads/lM;->a0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 176
    .line 177
    const/4 v5, 0x1

    .line 178
    if-nez v4, :cond_4

    .line 179
    .line 180
    new-instance v4, Lcom/google/android/gms/internal/ads/tt;

    .line 181
    .line 182
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/tt;-><init>(I)V

    .line 183
    .line 184
    .line 185
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    sput-object v4, Lcom/google/android/gms/internal/ads/lM;->a0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 190
    .line 191
    goto :goto_0

    .line 192
    :catchall_0
    move-exception v1

    .line 193
    goto :goto_1

    .line 194
    :cond_4
    :goto_0
    sget v4, Lcom/google/android/gms/internal/ads/lM;->b0:I

    .line 195
    .line 196
    add-int/2addr v4, v5

    .line 197
    sput v4, Lcom/google/android/gms/internal/ads/lM;->b0:I

    .line 198
    .line 199
    sget-object v4, Lcom/google/android/gms/internal/ads/lM;->a0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 200
    .line 201
    new-instance v11, Lcom/google/android/gms/internal/ads/MK;

    .line 202
    .line 203
    const/4 v10, 0x3

    .line 204
    move-object v5, v11

    .line 205
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/MK;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 206
    .line 207
    .line 208
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    .line 210
    const-wide/16 v6, 0x14

    .line 211
    .line 212
    invoke-interface {v4, v11, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 213
    .line 214
    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 217
    .line 218
    goto :goto_2

    .line 219
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    throw v1

    .line 221
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->j:LD0/M;

    .line 222
    .line 223
    iput-object v1, v0, LD0/M;->a:Ljava/lang/Exception;

    .line 224
    .line 225
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    iput-wide v4, v0, LD0/M;->b:J

    .line 231
    .line 232
    iput-wide v4, v0, LD0/M;->c:J

    .line 233
    .line 234
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->i:LD0/M;

    .line 235
    .line 236
    iput-object v1, v0, LD0/M;->a:Ljava/lang/Exception;

    .line 237
    .line 238
    iput-wide v4, v0, LD0/M;->b:J

    .line 239
    .line 240
    iput-wide v4, v0, LD0/M;->c:J

    .line 241
    .line 242
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/lM;->U:J

    .line 243
    .line 244
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/lM;->V:J

    .line 245
    .line 246
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->W:Landroid/os/Handler;

    .line 247
    .line 248
    if-eqz v0, :cond_6

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :cond_6
    return-void
.end method

.method public final n()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/lM;->N:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->f:Lcom/google/android/gms/internal/ads/WL;

    .line 11
    .line 12
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/WL;->x:J

    .line 13
    .line 14
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    cmp-long v5, v1, v3

    .line 20
    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/WL;->G:Lcom/google/android/gms/internal/ads/pl;

    .line 24
    .line 25
    check-cast v1, Lcom/google/android/gms/internal/ads/Nr;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/Et;->t(J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/WL;->x:J

    .line 39
    .line 40
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/WL;->e:Lcom/google/android/gms/internal/ads/VL;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/VL;->a(I)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method public final o()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lM;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->d:Lcom/google/android/gms/internal/ads/PA;

    .line 5
    .line 6
    iget v1, v0, Lcom/google/android/gms/internal/ads/PA;->J:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lcom/google/android/gms/internal/ads/ti;

    .line 17
    .line 18
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/ti;->zzf()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->e:Lcom/google/android/gms/internal/ads/PA;

    .line 25
    .line 26
    iget v1, v0, Lcom/google/android/gms/internal/ads/PA;->J:I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_1
    if-ge v3, v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/google/android/gms/internal/ads/ti;

    .line 36
    .line 37
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/ti;->zzf()V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->o:Lcom/google/android/gms/internal/ads/Fh;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fh;->c()V

    .line 48
    .line 49
    .line 50
    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/lM;->N:Z

    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/lM;->S:Z

    .line 53
    .line 54
    return-void
.end method

.method public final p(JILjava/nio/ByteBuffer;)Z
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-wide/from16 v2, p1

    .line 4
    .line 5
    move/from16 v4, p3

    .line 6
    .line 7
    move-object/from16 v5, p4

    .line 8
    .line 9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->H:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v7, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    if-ne v5, v0, :cond_1

    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->m:Lcom/google/android/gms/internal/ads/fM;

    .line 23
    .line 24
    const/4 v8, 0x0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->h()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    return v7

    .line 34
    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->m:Lcom/google/android/gms/internal/ads/fM;

    .line 35
    .line 36
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 37
    .line 38
    iget v10, v9, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 39
    .line 40
    iget v11, v0, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 41
    .line 42
    if-ne v10, v11, :cond_3

    .line 43
    .line 44
    iget v10, v9, Lcom/google/android/gms/internal/ads/fM;->g:I

    .line 45
    .line 46
    iget v11, v0, Lcom/google/android/gms/internal/ads/fM;->g:I

    .line 47
    .line 48
    if-ne v10, v11, :cond_3

    .line 49
    .line 50
    iget v10, v9, Lcom/google/android/gms/internal/ads/fM;->e:I

    .line 51
    .line 52
    iget v11, v0, Lcom/google/android/gms/internal/ads/fM;->e:I

    .line 53
    .line 54
    if-ne v10, v11, :cond_3

    .line 55
    .line 56
    iget v10, v9, Lcom/google/android/gms/internal/ads/fM;->f:I

    .line 57
    .line 58
    iget v11, v0, Lcom/google/android/gms/internal/ads/fM;->f:I

    .line 59
    .line 60
    if-ne v10, v11, :cond_3

    .line 61
    .line 62
    iget v9, v9, Lcom/google/android/gms/internal/ads/fM;->d:I

    .line 63
    .line 64
    iget v10, v0, Lcom/google/android/gms/internal/ads/fM;->d:I

    .line 65
    .line 66
    if-ne v9, v10, :cond_3

    .line 67
    .line 68
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 69
    .line 70
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/lM;->m:Lcom/google/android/gms/internal/ads/fM;

    .line 71
    .line 72
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 73
    .line 74
    if-eqz v0, :cond_5

    .line 75
    .line 76
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/lM;->j(Landroid/media/AudioTrack;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->e()V

    .line 89
    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->q()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    return v7

    .line 98
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->m()V

    .line 99
    .line 100
    .line 101
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/lM;->c(J)V

    .line 102
    .line 103
    .line 104
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/lM;->i:LD0/M;

    .line 109
    .line 110
    if-eqz v0, :cond_7

    .line 111
    .line 112
    move-object v6, v8

    .line 113
    goto/16 :goto_b

    .line 114
    .line 115
    :cond_7
    :try_start_0
    iget-object v0, v9, LD0/M;->a:Ljava/lang/Exception;

    .line 116
    .line 117
    if-nez v0, :cond_8

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_8
    sget-object v12, Lcom/google/android/gms/internal/ads/lM;->Z:Ljava/lang/Object;

    .line 121
    .line 122
    monitor-enter v12
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_0 .. :try_end_0} :catch_2

    .line 123
    :try_start_1
    sget v0, Lcom/google/android/gms/internal/ads/lM;->b0:I

    .line 124
    .line 125
    if-lez v0, :cond_9

    .line 126
    .line 127
    const/4 v0, 0x1

    .line 128
    goto :goto_2

    .line 129
    :cond_9
    const/4 v0, 0x0

    .line 130
    :goto_2
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    if-eqz v0, :cond_a

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_a
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 135
    .line 136
    .line 137
    move-result-wide v12

    .line 138
    iget-wide v14, v9, LD0/M;->c:J
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    .line 140
    cmp-long v0, v12, v14

    .line 141
    .line 142
    if-gez v0, :cond_b

    .line 143
    .line 144
    :goto_3
    return v7

    .line 145
    :cond_b
    :goto_4
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_3 .. :try_end_3} :catch_1

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 148
    .line 149
    .line 150
    :try_start_4
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/lM;->t:Lcom/google/android/gms/internal/ads/bH;

    .line 151
    .line 152
    iget v13, v1, Lcom/google/android/gms/internal/ads/lM;->O:I

    .line 153
    .line 154
    invoke-virtual {v0, v13, v12}, Lcom/google/android/gms/internal/ads/fM;->a(ILcom/google/android/gms/internal/ads/bH;)Landroid/media/AudioTrack;

    .line 155
    .line 156
    .line 157
    move-result-object v0
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_4 .. :try_end_4} :catch_0

    .line 158
    goto :goto_8

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :try_start_5
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 161
    .line 162
    if-nez v12, :cond_c

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_c
    invoke-virtual {v12, v0}, Lcom/google/android/gms/internal/ads/nM;->a(Ljava/lang/Exception;)V

    .line 166
    .line 167
    .line 168
    :goto_5
    throw v0
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_5 .. :try_end_5} :catch_1

    .line 169
    :goto_6
    move-object v12, v0

    .line 170
    goto :goto_7

    .line 171
    :catch_1
    move-exception v0

    .line 172
    goto :goto_6

    .line 173
    :goto_7
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 174
    .line 175
    iget v13, v0, Lcom/google/android/gms/internal/ads/fM;->h:I

    .line 176
    .line 177
    const v14, 0xf4240

    .line 178
    .line 179
    .line 180
    if-le v13, v14, :cond_42

    .line 181
    .line 182
    new-instance v13, Lcom/google/android/gms/internal/ads/fM;

    .line 183
    .line 184
    iget-object v14, v0, Lcom/google/android/gms/internal/ads/fM;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 185
    .line 186
    iget v15, v0, Lcom/google/android/gms/internal/ads/fM;->b:I

    .line 187
    .line 188
    iget v8, v0, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 189
    .line 190
    iget v7, v0, Lcom/google/android/gms/internal/ads/fM;->d:I

    .line 191
    .line 192
    iget v6, v0, Lcom/google/android/gms/internal/ads/fM;->e:I

    .line 193
    .line 194
    iget v10, v0, Lcom/google/android/gms/internal/ads/fM;->f:I

    .line 195
    .line 196
    iget v11, v0, Lcom/google/android/gms/internal/ads/fM;->g:I

    .line 197
    .line 198
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fM;->i:Lcom/google/android/gms/internal/ads/Fh;

    .line 199
    .line 200
    const v23, 0xf4240

    .line 201
    .line 202
    .line 203
    move/from16 v17, v15

    .line 204
    .line 205
    move-object v15, v13

    .line 206
    move-object/from16 v16, v14

    .line 207
    .line 208
    move/from16 v18, v8

    .line 209
    .line 210
    move/from16 v19, v7

    .line 211
    .line 212
    move/from16 v20, v6

    .line 213
    .line 214
    move/from16 v21, v10

    .line 215
    .line 216
    move/from16 v22, v11

    .line 217
    .line 218
    move-object/from16 v24, v0

    .line 219
    .line 220
    invoke-direct/range {v15 .. v24}, Lcom/google/android/gms/internal/ads/fM;-><init>(Lcom/google/android/gms/internal/ads/p0;IIIIIIILcom/google/android/gms/internal/ads/Fh;)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_6 .. :try_end_6} :catch_2

    .line 221
    .line 222
    .line 223
    :try_start_7
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->t:Lcom/google/android/gms/internal/ads/bH;

    .line 224
    .line 225
    iget v6, v1, Lcom/google/android/gms/internal/ads/lM;->O:I

    .line 226
    .line 227
    invoke-virtual {v13, v6, v0}, Lcom/google/android/gms/internal/ads/fM;->a(ILcom/google/android/gms/internal/ads/bH;)Landroid/media/AudioTrack;

    .line 228
    .line 229
    .line 230
    move-result-object v0
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_7 .. :try_end_7} :catch_4

    .line 231
    :try_start_8
    iput-object v13, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_8 .. :try_end_8} :catch_3

    .line 232
    .line 233
    :goto_8
    :try_start_9
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 234
    .line 235
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/lM;->j(Landroid/media/AudioTrack;)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_e

    .line 240
    .line 241
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 242
    .line 243
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->h:Lcom/google/android/gms/internal/ads/kM;

    .line 244
    .line 245
    if-nez v6, :cond_d

    .line 246
    .line 247
    new-instance v6, Lcom/google/android/gms/internal/ads/kM;

    .line 248
    .line 249
    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/kM;-><init>(Lcom/google/android/gms/internal/ads/lM;)V

    .line 250
    .line 251
    .line 252
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->h:Lcom/google/android/gms/internal/ads/kM;

    .line 253
    .line 254
    goto :goto_9

    .line 255
    :catch_2
    move-exception v0

    .line 256
    goto/16 :goto_24

    .line 257
    .line 258
    :cond_d
    :goto_9
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->h:Lcom/google/android/gms/internal/ads/kM;

    .line 259
    .line 260
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/kM;->a(Landroid/media/AudioTrack;)V

    .line 261
    .line 262
    .line 263
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    :cond_e
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 269
    .line 270
    const/16 v6, 0x1f

    .line 271
    .line 272
    if-lt v0, v6, :cond_f

    .line 273
    .line 274
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->k:Lcom/google/android/gms/internal/ads/zL;

    .line 275
    .line 276
    if-eqz v6, :cond_f

    .line 277
    .line 278
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 279
    .line 280
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/dM;->a(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zL;)V

    .line 281
    .line 282
    .line 283
    :cond_f
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 284
    .line 285
    invoke-virtual {v6}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    iput v6, v1, Lcom/google/android/gms/internal/ads/lM;->O:I

    .line 290
    .line 291
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/lM;->f:Lcom/google/android/gms/internal/ads/WL;

    .line 292
    .line 293
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 294
    .line 295
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 296
    .line 297
    iget v7, v6, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 298
    .line 299
    const/4 v8, 0x2

    .line 300
    if-ne v7, v8, :cond_10

    .line 301
    .line 302
    const/4 v12, 0x1

    .line 303
    goto :goto_a

    .line 304
    :cond_10
    const/4 v12, 0x0

    .line 305
    :goto_a
    iget v13, v6, Lcom/google/android/gms/internal/ads/fM;->g:I

    .line 306
    .line 307
    iget v14, v6, Lcom/google/android/gms/internal/ads/fM;->d:I

    .line 308
    .line 309
    iget v15, v6, Lcom/google/android/gms/internal/ads/fM;->h:I

    .line 310
    .line 311
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/WL;->b(Landroid/media/AudioTrack;ZIII)V

    .line 312
    .line 313
    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 315
    .line 316
    .line 317
    move-result v6

    .line 318
    if-eqz v6, :cond_11

    .line 319
    .line 320
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 321
    .line 322
    iget v7, v1, Lcom/google/android/gms/internal/ads/lM;->G:F

    .line 323
    .line 324
    invoke-virtual {v6, v7}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 325
    .line 326
    .line 327
    :cond_11
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->P:Lcom/google/android/gms/internal/ads/bK;

    .line 328
    .line 329
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 330
    .line 331
    .line 332
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->Q:Lcom/google/android/gms/internal/ads/IL;

    .line 333
    .line 334
    if-eqz v6, :cond_12

    .line 335
    .line 336
    const/16 v7, 0x17

    .line 337
    .line 338
    if-lt v0, v7, :cond_12

    .line 339
    .line 340
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 341
    .line 342
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/cM;->a(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/IL;)V

    .line 343
    .line 344
    .line 345
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->r:Lcom/google/android/gms/internal/ads/GL;

    .line 346
    .line 347
    if-eqz v6, :cond_12

    .line 348
    .line 349
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/lM;->Q:Lcom/google/android/gms/internal/ads/IL;

    .line 350
    .line 351
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/IL;->a:Landroid/media/AudioDeviceInfo;

    .line 352
    .line 353
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/GL;->a(Landroid/media/AudioDeviceInfo;)V

    .line 354
    .line 355
    .line 356
    :cond_12
    const/16 v6, 0x18

    .line 357
    .line 358
    if-lt v0, v6, :cond_13

    .line 359
    .line 360
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->r:Lcom/google/android/gms/internal/ads/GL;

    .line 361
    .line 362
    if-eqz v0, :cond_13

    .line 363
    .line 364
    new-instance v6, Lcom/google/android/gms/internal/ads/iM;

    .line 365
    .line 366
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 367
    .line 368
    invoke-direct {v6, v7, v0}, Lcom/google/android/gms/internal/ads/iM;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/GL;)V

    .line 369
    .line 370
    .line 371
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->s:Lcom/google/android/gms/internal/ads/iM;

    .line 372
    .line 373
    :cond_13
    const/4 v6, 0x1

    .line 374
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/lM;->E:Z

    .line 375
    .line 376
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 377
    .line 378
    if-eqz v0, :cond_14

    .line 379
    .line 380
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 381
    .line 382
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    new-instance v6, Lcom/google/android/gms/internal/ads/GH;

    .line 386
    .line 387
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 388
    .line 389
    .line 390
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/nM;->a:Lcom/google/android/gms/internal/ads/oM;

    .line 391
    .line 392
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oM;->y0:Lcom/google/android/gms/internal/ads/oL;

    .line 393
    .line 394
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 395
    .line 396
    check-cast v7, Landroid/os/Handler;

    .line 397
    .line 398
    if-eqz v7, :cond_14

    .line 399
    .line 400
    new-instance v8, Lcom/google/android/gms/internal/ads/NL;

    .line 401
    .line 402
    const/4 v10, 0x0

    .line 403
    invoke-direct {v8, v0, v6, v10}, Lcom/google/android/gms/internal/ads/NL;-><init>(Lcom/google/android/gms/internal/ads/oL;Lcom/google/android/gms/internal/ads/GH;I)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_9 .. :try_end_9} :catch_2

    .line 407
    .line 408
    .line 409
    :cond_14
    const/4 v6, 0x0

    .line 410
    :goto_b
    iput-object v6, v9, LD0/M;->a:Ljava/lang/Exception;

    .line 411
    .line 412
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    iput-wide v6, v9, LD0/M;->b:J

    .line 418
    .line 419
    iput-wide v6, v9, LD0/M;->c:J

    .line 420
    .line 421
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/lM;->E:Z

    .line 422
    .line 423
    const-wide/16 v8, 0x0

    .line 424
    .line 425
    if-eqz v0, :cond_15

    .line 426
    .line 427
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 428
    .line 429
    .line 430
    move-result-wide v10

    .line 431
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/lM;->F:J

    .line 432
    .line 433
    const/4 v10, 0x0

    .line 434
    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/lM;->D:Z

    .line 435
    .line 436
    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/lM;->E:Z

    .line 437
    .line 438
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/lM;->c(J)V

    .line 439
    .line 440
    .line 441
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/lM;->N:Z

    .line 442
    .line 443
    if-eqz v0, :cond_15

    .line 444
    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->n()V

    .line 446
    .line 447
    .line 448
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->b()J

    .line 449
    .line 450
    .line 451
    move-result-wide v10

    .line 452
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->f:Lcom/google/android/gms/internal/ads/WL;

    .line 453
    .line 454
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/WL;->c:Landroid/media/AudioTrack;

    .line 455
    .line 456
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v12}, Landroid/media/AudioTrack;->getPlayState()I

    .line 460
    .line 461
    .line 462
    move-result v12

    .line 463
    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/WL;->g:Z

    .line 464
    .line 465
    if-eqz v13, :cond_18

    .line 466
    .line 467
    const/4 v13, 0x2

    .line 468
    if-ne v12, v13, :cond_16

    .line 469
    .line 470
    const/4 v13, 0x0

    .line 471
    iput-boolean v13, v0, Lcom/google/android/gms/internal/ads/WL;->o:Z

    .line 472
    .line 473
    goto :goto_c

    .line 474
    :cond_16
    const/4 v13, 0x0

    .line 475
    const/4 v14, 0x1

    .line 476
    if-ne v12, v14, :cond_18

    .line 477
    .line 478
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/WL;->d()J

    .line 479
    .line 480
    .line 481
    move-result-wide v14

    .line 482
    cmp-long v12, v14, v8

    .line 483
    .line 484
    if-eqz v12, :cond_17

    .line 485
    .line 486
    const/4 v12, 0x1

    .line 487
    goto :goto_d

    .line 488
    :cond_17
    :goto_c
    return v13

    .line 489
    :cond_18
    :goto_d
    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/WL;->o:Z

    .line 490
    .line 491
    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/ads/WL;->c(J)Z

    .line 492
    .line 493
    .line 494
    move-result v10

    .line 495
    iput-boolean v10, v0, Lcom/google/android/gms/internal/ads/WL;->o:Z

    .line 496
    .line 497
    if-eqz v13, :cond_19

    .line 498
    .line 499
    if-nez v10, :cond_19

    .line 500
    .line 501
    const/4 v10, 0x1

    .line 502
    if-eq v12, v10, :cond_19

    .line 503
    .line 504
    iget v15, v0, Lcom/google/android/gms/internal/ads/WL;->d:I

    .line 505
    .line 506
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/WL;->h:J

    .line 507
    .line 508
    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/Et;->w(J)J

    .line 509
    .line 510
    .line 511
    move-result-wide v16

    .line 512
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/WL;->a:Lcom/google/android/gms/internal/ads/bM;

    .line 513
    .line 514
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/bM;->a:Lcom/google/android/gms/internal/ads/lM;

    .line 515
    .line 516
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 517
    .line 518
    if-eqz v11, :cond_19

    .line 519
    .line 520
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 521
    .line 522
    .line 523
    move-result-wide v11

    .line 524
    iget-wide v13, v10, Lcom/google/android/gms/internal/ads/lM;->R:J

    .line 525
    .line 526
    sub-long v18, v11, v13

    .line 527
    .line 528
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 529
    .line 530
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/nM;->a:Lcom/google/android/gms/internal/ads/oM;

    .line 531
    .line 532
    iget-object v14, v10, Lcom/google/android/gms/internal/ads/oM;->y0:Lcom/google/android/gms/internal/ads/oL;

    .line 533
    .line 534
    iget-object v10, v14, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v10, Landroid/os/Handler;

    .line 537
    .line 538
    if-eqz v10, :cond_19

    .line 539
    .line 540
    new-instance v11, Lcom/google/android/gms/internal/ads/ML;

    .line 541
    .line 542
    const/16 v20, 0x0

    .line 543
    .line 544
    move-object v13, v11

    .line 545
    invoke-direct/range {v13 .. v20}, Lcom/google/android/gms/internal/ads/ML;-><init>(Ljava/lang/Object;IJJI)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 549
    .line 550
    .line 551
    :cond_19
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/lM;->H:Ljava/nio/ByteBuffer;

    .line 552
    .line 553
    if-nez v10, :cond_3e

    .line 554
    .line 555
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 556
    .line 557
    .line 558
    move-result-object v10

    .line 559
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 560
    .line 561
    if-ne v10, v11, :cond_1a

    .line 562
    .line 563
    const/4 v10, 0x1

    .line 564
    goto :goto_e

    .line 565
    :cond_1a
    const/4 v10, 0x0

    .line 566
    :goto_e
    invoke-static {v10}, Lo3/r;->J(Z)V

    .line 567
    .line 568
    .line 569
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 570
    .line 571
    .line 572
    move-result v10

    .line 573
    if-nez v10, :cond_1b

    .line 574
    .line 575
    const/4 v10, 0x1

    .line 576
    return v10

    .line 577
    :cond_1b
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 578
    .line 579
    iget v11, v10, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 580
    .line 581
    if-eqz v11, :cond_36

    .line 582
    .line 583
    iget v11, v1, Lcom/google/android/gms/internal/ads/lM;->C:I

    .line 584
    .line 585
    if-nez v11, :cond_36

    .line 586
    .line 587
    iget v10, v10, Lcom/google/android/gms/internal/ads/fM;->g:I

    .line 588
    .line 589
    const/4 v11, 0x5

    .line 590
    const/16 v12, 0x14

    .line 591
    .line 592
    if-eq v10, v12, :cond_30

    .line 593
    .line 594
    const/16 v12, 0x1e

    .line 595
    .line 596
    const/4 v13, -0x2

    .line 597
    const/4 v15, -0x1

    .line 598
    if-eq v10, v12, :cond_28

    .line 599
    .line 600
    const/4 v12, 0x3

    .line 601
    const/16 v14, 0xa

    .line 602
    .line 603
    packed-switch v10, :pswitch_data_0

    .line 604
    .line 605
    .line 606
    const/16 v6, 0x10

    .line 607
    .line 608
    packed-switch v10, :pswitch_data_1

    .line 609
    .line 610
    .line 611
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 612
    .line 613
    const-string v2, "Unexpected audio encoding: "

    .line 614
    .line 615
    invoke-static {v2, v10}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 620
    .line 621
    .line 622
    throw v0

    .line 623
    :pswitch_0
    new-array v7, v6, [B

    .line 624
    .line 625
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 626
    .line 627
    .line 628
    move-result v10

    .line 629
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 633
    .line 634
    .line 635
    new-instance v10, Lcom/google/android/gms/internal/ads/f0;

    .line 636
    .line 637
    invoke-direct {v10, v7, v6}, Lcom/google/android/gms/internal/ads/f0;-><init>([BI)V

    .line 638
    .line 639
    .line 640
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/nH;->a(Lcom/google/android/gms/internal/ads/f0;)LA2/i;

    .line 641
    .line 642
    .line 643
    move-result-object v6

    .line 644
    iget v6, v6, LA2/i;->c:I

    .line 645
    .line 646
    goto/16 :goto_1f

    .line 647
    .line 648
    :cond_1c
    :goto_f
    :pswitch_1
    const/16 v6, 0x400

    .line 649
    .line 650
    goto/16 :goto_1f

    .line 651
    .line 652
    :pswitch_2
    const/16 v6, 0x200

    .line 653
    .line 654
    goto/16 :goto_1f

    .line 655
    .line 656
    :pswitch_3
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 657
    .line 658
    .line 659
    move-result v7

    .line 660
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->limit()I

    .line 661
    .line 662
    .line 663
    move-result v10

    .line 664
    add-int/lit8 v10, v10, -0xa

    .line 665
    .line 666
    move v11, v7

    .line 667
    :goto_10
    if-gt v11, v10, :cond_1f

    .line 668
    .line 669
    add-int/lit8 v12, v11, 0x4

    .line 670
    .line 671
    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 672
    .line 673
    .line 674
    move-result v12

    .line 675
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 676
    .line 677
    .line 678
    move-result-object v14

    .line 679
    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 680
    .line 681
    if-ne v14, v8, :cond_1d

    .line 682
    .line 683
    goto :goto_11

    .line 684
    :cond_1d
    invoke-static {v12}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 685
    .line 686
    .line 687
    move-result v12

    .line 688
    :goto_11
    and-int/lit8 v8, v12, -0x2

    .line 689
    .line 690
    const v9, -0x78d9046

    .line 691
    .line 692
    .line 693
    if-ne v8, v9, :cond_1e

    .line 694
    .line 695
    sub-int/2addr v11, v7

    .line 696
    goto :goto_12

    .line 697
    :cond_1e
    add-int/lit8 v11, v11, 0x1

    .line 698
    .line 699
    const-wide/16 v8, 0x0

    .line 700
    .line 701
    goto :goto_10

    .line 702
    :cond_1f
    const/4 v11, -0x1

    .line 703
    :goto_12
    if-ne v11, v15, :cond_20

    .line 704
    .line 705
    const/4 v6, 0x0

    .line 706
    goto/16 :goto_1f

    .line 707
    .line 708
    :cond_20
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 709
    .line 710
    .line 711
    move-result v7

    .line 712
    add-int/2addr v7, v11

    .line 713
    add-int/lit8 v7, v7, 0x7

    .line 714
    .line 715
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 716
    .line 717
    .line 718
    move-result v7

    .line 719
    and-int/lit16 v7, v7, 0xff

    .line 720
    .line 721
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 722
    .line 723
    .line 724
    move-result v8

    .line 725
    add-int/2addr v8, v11

    .line 726
    const/16 v9, 0xbb

    .line 727
    .line 728
    if-ne v7, v9, :cond_21

    .line 729
    .line 730
    const/16 v7, 0x9

    .line 731
    .line 732
    goto :goto_13

    .line 733
    :cond_21
    const/16 v7, 0x8

    .line 734
    .line 735
    :goto_13
    add-int/2addr v8, v7

    .line 736
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 737
    .line 738
    .line 739
    move-result v7

    .line 740
    shr-int/lit8 v7, v7, 0x4

    .line 741
    .line 742
    and-int/lit8 v7, v7, 0x7

    .line 743
    .line 744
    const/16 v8, 0x28

    .line 745
    .line 746
    shl-int v7, v8, v7

    .line 747
    .line 748
    mul-int/lit8 v6, v7, 0x10

    .line 749
    .line 750
    goto/16 :goto_1f

    .line 751
    .line 752
    :pswitch_4
    const/16 v6, 0x800

    .line 753
    .line 754
    goto/16 :goto_1f

    .line 755
    .line 756
    :pswitch_5
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 757
    .line 758
    .line 759
    move-result v6

    .line 760
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 761
    .line 762
    .line 763
    move-result v6

    .line 764
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 765
    .line 766
    .line 767
    move-result-object v7

    .line 768
    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 769
    .line 770
    if-ne v7, v8, :cond_22

    .line 771
    .line 772
    goto :goto_14

    .line 773
    :cond_22
    invoke-static {v6}, Ljava/lang/Integer;->reverseBytes(I)I

    .line 774
    .line 775
    .line 776
    move-result v6

    .line 777
    :goto_14
    const/high16 v7, -0x200000

    .line 778
    .line 779
    and-int v8, v6, v7

    .line 780
    .line 781
    if-ne v8, v7, :cond_25

    .line 782
    .line 783
    ushr-int/lit8 v7, v6, 0x13

    .line 784
    .line 785
    and-int/2addr v7, v12

    .line 786
    const/4 v8, 0x1

    .line 787
    if-eq v7, v8, :cond_25

    .line 788
    .line 789
    ushr-int/lit8 v8, v6, 0x11

    .line 790
    .line 791
    and-int/2addr v8, v12

    .line 792
    if-eqz v8, :cond_25

    .line 793
    .line 794
    ushr-int/lit8 v9, v6, 0xc

    .line 795
    .line 796
    ushr-int/2addr v6, v14

    .line 797
    and-int/2addr v6, v12

    .line 798
    const/16 v10, 0xf

    .line 799
    .line 800
    and-int/2addr v9, v10

    .line 801
    if-eqz v9, :cond_25

    .line 802
    .line 803
    if-eq v9, v10, :cond_25

    .line 804
    .line 805
    if-eq v6, v12, :cond_25

    .line 806
    .line 807
    const/16 v6, 0x480

    .line 808
    .line 809
    const/4 v9, 0x1

    .line 810
    if-eq v8, v9, :cond_23

    .line 811
    .line 812
    const/4 v9, 0x2

    .line 813
    if-eq v8, v9, :cond_26

    .line 814
    .line 815
    const/16 v6, 0x180

    .line 816
    .line 817
    goto :goto_15

    .line 818
    :cond_23
    if-ne v7, v12, :cond_24

    .line 819
    .line 820
    goto :goto_15

    .line 821
    :cond_24
    const/16 v6, 0x240

    .line 822
    .line 823
    goto :goto_15

    .line 824
    :cond_25
    const/4 v6, -0x1

    .line 825
    :cond_26
    :goto_15
    if-eq v6, v15, :cond_27

    .line 826
    .line 827
    goto/16 :goto_1f

    .line 828
    .line 829
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 830
    .line 831
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 832
    .line 833
    .line 834
    throw v0

    .line 835
    :cond_28
    :pswitch_6
    const/4 v6, 0x0

    .line 836
    goto :goto_17

    .line 837
    :pswitch_7
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 838
    .line 839
    .line 840
    move-result v6

    .line 841
    add-int/2addr v6, v11

    .line 842
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 843
    .line 844
    .line 845
    move-result v6

    .line 846
    and-int/lit16 v6, v6, 0xf8

    .line 847
    .line 848
    shr-int/2addr v6, v12

    .line 849
    if-le v6, v14, :cond_2a

    .line 850
    .line 851
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 852
    .line 853
    .line 854
    move-result v6

    .line 855
    add-int/lit8 v6, v6, 0x4

    .line 856
    .line 857
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 858
    .line 859
    .line 860
    move-result v6

    .line 861
    and-int/lit16 v6, v6, 0xc0

    .line 862
    .line 863
    shr-int/lit8 v6, v6, 0x6

    .line 864
    .line 865
    if-ne v6, v12, :cond_29

    .line 866
    .line 867
    goto :goto_16

    .line 868
    :cond_29
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 869
    .line 870
    .line 871
    move-result v6

    .line 872
    add-int/lit8 v6, v6, 0x4

    .line 873
    .line 874
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 875
    .line 876
    .line 877
    move-result v6

    .line 878
    and-int/lit8 v6, v6, 0x30

    .line 879
    .line 880
    shr-int/lit8 v12, v6, 0x4

    .line 881
    .line 882
    :goto_16
    sget-object v6, Lcom/google/android/gms/internal/ads/nH;->c:[I

    .line 883
    .line 884
    aget v6, v6, v12

    .line 885
    .line 886
    mul-int/lit16 v6, v6, 0x100

    .line 887
    .line 888
    goto/16 :goto_1f

    .line 889
    .line 890
    :cond_2a
    const/16 v6, 0x600

    .line 891
    .line 892
    goto/16 :goto_1f

    .line 893
    .line 894
    :goto_17
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 895
    .line 896
    .line 897
    move-result v7

    .line 898
    const v8, -0xde4bec0

    .line 899
    .line 900
    .line 901
    if-eq v7, v8, :cond_1c

    .line 902
    .line 903
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 904
    .line 905
    .line 906
    move-result v7

    .line 907
    const v8, -0x17bd3b8f

    .line 908
    .line 909
    .line 910
    if-ne v7, v8, :cond_2b

    .line 911
    .line 912
    goto/16 :goto_f

    .line 913
    .line 914
    :cond_2b
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    .line 915
    .line 916
    .line 917
    move-result v7

    .line 918
    const v6, 0x25205864

    .line 919
    .line 920
    .line 921
    if-ne v7, v6, :cond_2c

    .line 922
    .line 923
    const/16 v6, 0x1000

    .line 924
    .line 925
    goto/16 :goto_1f

    .line 926
    .line 927
    :cond_2c
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->position()I

    .line 928
    .line 929
    .line 930
    move-result v6

    .line 931
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 932
    .line 933
    .line 934
    move-result v7

    .line 935
    if-eq v7, v13, :cond_2f

    .line 936
    .line 937
    if-eq v7, v15, :cond_2e

    .line 938
    .line 939
    const/16 v8, 0x1f

    .line 940
    .line 941
    if-eq v7, v8, :cond_2d

    .line 942
    .line 943
    add-int/lit8 v7, v6, 0x4

    .line 944
    .line 945
    add-int/2addr v6, v11

    .line 946
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 947
    .line 948
    .line 949
    move-result v7

    .line 950
    const/4 v8, 0x1

    .line 951
    and-int/2addr v7, v8

    .line 952
    shl-int/lit8 v7, v7, 0x6

    .line 953
    .line 954
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 955
    .line 956
    .line 957
    move-result v6

    .line 958
    and-int/lit16 v6, v6, 0xfc

    .line 959
    .line 960
    const/4 v8, 0x2

    .line 961
    :goto_18
    shr-int/2addr v6, v8

    .line 962
    or-int/2addr v6, v7

    .line 963
    const/4 v9, 0x1

    .line 964
    goto :goto_1a

    .line 965
    :cond_2d
    const/4 v8, 0x2

    .line 966
    add-int/lit8 v7, v6, 0x5

    .line 967
    .line 968
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 969
    .line 970
    .line 971
    move-result v7

    .line 972
    and-int/lit8 v7, v7, 0x7

    .line 973
    .line 974
    shl-int/lit8 v7, v7, 0x4

    .line 975
    .line 976
    add-int/lit8 v6, v6, 0x6

    .line 977
    .line 978
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 979
    .line 980
    .line 981
    move-result v6

    .line 982
    :goto_19
    and-int/lit8 v6, v6, 0x3c

    .line 983
    .line 984
    goto :goto_18

    .line 985
    :cond_2e
    const/4 v8, 0x2

    .line 986
    add-int/lit8 v7, v6, 0x4

    .line 987
    .line 988
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 989
    .line 990
    .line 991
    move-result v7

    .line 992
    and-int/lit8 v7, v7, 0x7

    .line 993
    .line 994
    shl-int/lit8 v7, v7, 0x4

    .line 995
    .line 996
    add-int/lit8 v6, v6, 0x7

    .line 997
    .line 998
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 999
    .line 1000
    .line 1001
    move-result v6

    .line 1002
    goto :goto_19

    .line 1003
    :cond_2f
    const/4 v8, 0x2

    .line 1004
    add-int/lit8 v7, v6, 0x4

    .line 1005
    .line 1006
    add-int/2addr v6, v11

    .line 1007
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 1008
    .line 1009
    .line 1010
    move-result v6

    .line 1011
    const/4 v9, 0x1

    .line 1012
    and-int/2addr v6, v9

    .line 1013
    shl-int/lit8 v6, v6, 0x6

    .line 1014
    .line 1015
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 1016
    .line 1017
    .line 1018
    move-result v7

    .line 1019
    and-int/lit16 v7, v7, 0xfc

    .line 1020
    .line 1021
    shr-int/2addr v7, v8

    .line 1022
    or-int/2addr v6, v7

    .line 1023
    :goto_1a
    add-int/2addr v6, v9

    .line 1024
    mul-int/lit8 v6, v6, 0x20

    .line 1025
    .line 1026
    goto :goto_1f

    .line 1027
    :cond_30
    const/4 v8, 0x2

    .line 1028
    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->get(I)B

    .line 1029
    .line 1030
    .line 1031
    move-result v6

    .line 1032
    and-int/2addr v6, v8

    .line 1033
    if-nez v6, :cond_31

    .line 1034
    .line 1035
    const/4 v6, 0x0

    .line 1036
    goto :goto_1d

    .line 1037
    :cond_31
    const/16 v6, 0x1a

    .line 1038
    .line 1039
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 1040
    .line 1041
    .line 1042
    move-result v6

    .line 1043
    const/16 v7, 0x1c

    .line 1044
    .line 1045
    const/4 v8, 0x0

    .line 1046
    const/16 v9, 0x1c

    .line 1047
    .line 1048
    :goto_1b
    if-ge v8, v6, :cond_32

    .line 1049
    .line 1050
    add-int/lit8 v10, v8, 0x1b

    .line 1051
    .line 1052
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 1053
    .line 1054
    .line 1055
    move-result v10

    .line 1056
    add-int/2addr v9, v10

    .line 1057
    add-int/lit8 v8, v8, 0x1

    .line 1058
    .line 1059
    goto :goto_1b

    .line 1060
    :cond_32
    add-int/lit8 v6, v9, 0x1a

    .line 1061
    .line 1062
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get(I)B

    .line 1063
    .line 1064
    .line 1065
    move-result v6

    .line 1066
    const/4 v8, 0x0

    .line 1067
    :goto_1c
    if-ge v8, v6, :cond_33

    .line 1068
    .line 1069
    add-int/lit8 v10, v9, 0x1b

    .line 1070
    .line 1071
    add-int/2addr v10, v8

    .line 1072
    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->get(I)B

    .line 1073
    .line 1074
    .line 1075
    move-result v10

    .line 1076
    add-int/2addr v7, v10

    .line 1077
    add-int/lit8 v8, v8, 0x1

    .line 1078
    .line 1079
    goto :goto_1c

    .line 1080
    :cond_33
    add-int v6, v9, v7

    .line 1081
    .line 1082
    :goto_1d
    add-int/lit8 v7, v6, 0x1a

    .line 1083
    .line 1084
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 1085
    .line 1086
    .line 1087
    move-result v7

    .line 1088
    add-int/lit8 v7, v7, 0x1b

    .line 1089
    .line 1090
    add-int/2addr v7, v6

    .line 1091
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 1092
    .line 1093
    .line 1094
    move-result v6

    .line 1095
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->limit()I

    .line 1096
    .line 1097
    .line 1098
    move-result v8

    .line 1099
    sub-int/2addr v8, v7

    .line 1100
    const/4 v9, 0x1

    .line 1101
    if-le v8, v9, :cond_34

    .line 1102
    .line 1103
    add-int/2addr v7, v9

    .line 1104
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 1105
    .line 1106
    .line 1107
    move-result v7

    .line 1108
    goto :goto_1e

    .line 1109
    :cond_34
    const/4 v7, 0x0

    .line 1110
    :goto_1e
    invoke-static {v6, v7}, LQ3/b;->X(BB)J

    .line 1111
    .line 1112
    .line 1113
    move-result-wide v6

    .line 1114
    const-wide/32 v8, 0xbb80

    .line 1115
    .line 1116
    .line 1117
    mul-long v6, v6, v8

    .line 1118
    .line 1119
    const-wide/32 v8, 0xf4240

    .line 1120
    .line 1121
    .line 1122
    div-long/2addr v6, v8

    .line 1123
    long-to-int v7, v6

    .line 1124
    move v6, v7

    .line 1125
    :goto_1f
    iput v6, v1, Lcom/google/android/gms/internal/ads/lM;->C:I

    .line 1126
    .line 1127
    if-eqz v6, :cond_35

    .line 1128
    .line 1129
    goto :goto_20

    .line 1130
    :cond_35
    const/4 v6, 0x1

    .line 1131
    return v6

    .line 1132
    :cond_36
    :goto_20
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->u:Lcom/google/android/gms/internal/ads/gM;

    .line 1133
    .line 1134
    if-eqz v6, :cond_38

    .line 1135
    .line 1136
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->h()Z

    .line 1137
    .line 1138
    .line 1139
    move-result v6

    .line 1140
    if-nez v6, :cond_37

    .line 1141
    .line 1142
    const/4 v6, 0x0

    .line 1143
    return v6

    .line 1144
    :cond_37
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/lM;->c(J)V

    .line 1145
    .line 1146
    .line 1147
    const/4 v6, 0x0

    .line 1148
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->u:Lcom/google/android/gms/internal/ads/gM;

    .line 1149
    .line 1150
    :cond_38
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/lM;->F:J

    .line 1151
    .line 1152
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 1153
    .line 1154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->a()J

    .line 1155
    .line 1156
    .line 1157
    move-result-wide v9

    .line 1158
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/lM;->c:Lcom/google/android/gms/internal/ads/sM;

    .line 1159
    .line 1160
    iget-wide v11, v11, Lcom/google/android/gms/internal/ads/sM;->o:J

    .line 1161
    .line 1162
    sub-long/2addr v9, v11

    .line 1163
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/fM;->a:Lcom/google/android/gms/internal/ads/p0;

    .line 1164
    .line 1165
    iget v8, v8, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 1166
    .line 1167
    invoke-static {v8, v9, v10}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 1168
    .line 1169
    .line 1170
    move-result-wide v8

    .line 1171
    add-long/2addr v8, v6

    .line 1172
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/lM;->D:Z

    .line 1173
    .line 1174
    if-nez v6, :cond_3a

    .line 1175
    .line 1176
    sub-long v6, v8, v2

    .line 1177
    .line 1178
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 1179
    .line 1180
    .line 1181
    move-result-wide v6

    .line 1182
    const-wide/32 v10, 0x30d40

    .line 1183
    .line 1184
    .line 1185
    cmp-long v12, v6, v10

    .line 1186
    .line 1187
    if-lez v12, :cond_3a

    .line 1188
    .line 1189
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 1190
    .line 1191
    if-eqz v6, :cond_39

    .line 1192
    .line 1193
    new-instance v7, LD0/t;

    .line 1194
    .line 1195
    const-string v10, "Unexpected audio track timestamp discontinuity: expected "

    .line 1196
    .line 1197
    const-string v11, ", got "

    .line 1198
    .line 1199
    invoke-static {v10, v8, v9, v11}, Lt/a;->d(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    move-result-object v10

    .line 1203
    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1204
    .line 1205
    .line 1206
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v10

    .line 1210
    invoke-direct {v7, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 1211
    .line 1212
    .line 1213
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/nM;->a(Ljava/lang/Exception;)V

    .line 1214
    .line 1215
    .line 1216
    :cond_39
    const/4 v6, 0x1

    .line 1217
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/lM;->D:Z

    .line 1218
    .line 1219
    :cond_3a
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/lM;->D:Z

    .line 1220
    .line 1221
    if-eqz v6, :cond_3c

    .line 1222
    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->h()Z

    .line 1224
    .line 1225
    .line 1226
    move-result v6

    .line 1227
    if-nez v6, :cond_3b

    .line 1228
    .line 1229
    const/4 v6, 0x0

    .line 1230
    return v6

    .line 1231
    :cond_3b
    const/4 v6, 0x0

    .line 1232
    sub-long v7, v2, v8

    .line 1233
    .line 1234
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/lM;->F:J

    .line 1235
    .line 1236
    add-long/2addr v9, v7

    .line 1237
    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/lM;->F:J

    .line 1238
    .line 1239
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/lM;->D:Z

    .line 1240
    .line 1241
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/lM;->c(J)V

    .line 1242
    .line 1243
    .line 1244
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 1245
    .line 1246
    if-eqz v6, :cond_3c

    .line 1247
    .line 1248
    const-wide/16 v9, 0x0

    .line 1249
    .line 1250
    cmp-long v11, v7, v9

    .line 1251
    .line 1252
    if-eqz v11, :cond_3c

    .line 1253
    .line 1254
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/nM;->a:Lcom/google/android/gms/internal/ads/oM;

    .line 1255
    .line 1256
    const/4 v7, 0x1

    .line 1257
    iput-boolean v7, v6, Lcom/google/android/gms/internal/ads/oM;->H0:Z

    .line 1258
    .line 1259
    :cond_3c
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 1260
    .line 1261
    iget v6, v6, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 1262
    .line 1263
    if-nez v6, :cond_3d

    .line 1264
    .line 1265
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/lM;->y:J

    .line 1266
    .line 1267
    invoke-virtual/range {p4 .. p4}, Ljava/nio/Buffer;->remaining()I

    .line 1268
    .line 1269
    .line 1270
    move-result v8

    .line 1271
    int-to-long v8, v8

    .line 1272
    add-long/2addr v6, v8

    .line 1273
    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/lM;->y:J

    .line 1274
    .line 1275
    goto :goto_21

    .line 1276
    :cond_3d
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/lM;->z:J

    .line 1277
    .line 1278
    iget v8, v1, Lcom/google/android/gms/internal/ads/lM;->C:I

    .line 1279
    .line 1280
    int-to-long v8, v8

    .line 1281
    int-to-long v10, v4

    .line 1282
    mul-long v8, v8, v10

    .line 1283
    .line 1284
    add-long/2addr v8, v6

    .line 1285
    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/lM;->z:J

    .line 1286
    .line 1287
    :goto_21
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/lM;->H:Ljava/nio/ByteBuffer;

    .line 1288
    .line 1289
    iput v4, v1, Lcom/google/android/gms/internal/ads/lM;->I:I

    .line 1290
    .line 1291
    :cond_3e
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/lM;->f(J)V

    .line 1292
    .line 1293
    .line 1294
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lM;->H:Ljava/nio/ByteBuffer;

    .line 1295
    .line 1296
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 1297
    .line 1298
    .line 1299
    move-result v2

    .line 1300
    if-nez v2, :cond_3f

    .line 1301
    .line 1302
    const/4 v2, 0x0

    .line 1303
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/lM;->H:Ljava/nio/ByteBuffer;

    .line 1304
    .line 1305
    const/4 v2, 0x0

    .line 1306
    iput v2, v1, Lcom/google/android/gms/internal/ads/lM;->I:I

    .line 1307
    .line 1308
    const/4 v2, 0x1

    .line 1309
    return v2

    .line 1310
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->b()J

    .line 1311
    .line 1312
    .line 1313
    move-result-wide v2

    .line 1314
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/WL;->y:J

    .line 1315
    .line 1316
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    cmp-long v8, v4, v6

    .line 1322
    .line 1323
    if-eqz v8, :cond_40

    .line 1324
    .line 1325
    const-wide/16 v4, 0x0

    .line 1326
    .line 1327
    cmp-long v6, v2, v4

    .line 1328
    .line 1329
    if-lez v6, :cond_40

    .line 1330
    .line 1331
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/WL;->G:Lcom/google/android/gms/internal/ads/pl;

    .line 1332
    .line 1333
    check-cast v2, Lcom/google/android/gms/internal/ads/Nr;

    .line 1334
    .line 1335
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1336
    .line 1337
    .line 1338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1339
    .line 1340
    .line 1341
    move-result-wide v2

    .line 1342
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/WL;->y:J

    .line 1343
    .line 1344
    sub-long/2addr v2, v4

    .line 1345
    const-wide/16 v4, 0xc8

    .line 1346
    .line 1347
    cmp-long v0, v2, v4

    .line 1348
    .line 1349
    if-ltz v0, :cond_40

    .line 1350
    .line 1351
    const-string v0, "DefaultAudioSink"

    .line 1352
    .line 1353
    const-string v2, "Resetting stalled audio track"

    .line 1354
    .line 1355
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    .line 1357
    .line 1358
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/lM;->m()V

    .line 1359
    .line 1360
    .line 1361
    const/4 v2, 0x1

    .line 1362
    return v2

    .line 1363
    :cond_40
    const/4 v2, 0x0

    .line 1364
    return v2

    .line 1365
    :catch_3
    move-exception v0

    .line 1366
    goto :goto_23

    .line 1367
    :catch_4
    move-exception v0

    .line 1368
    :try_start_a
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 1369
    .line 1370
    if-nez v2, :cond_41

    .line 1371
    .line 1372
    goto :goto_22

    .line 1373
    :cond_41
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/nM;->a(Ljava/lang/Exception;)V

    .line 1374
    .line 1375
    .line 1376
    :goto_22
    throw v0
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_a .. :try_end_a} :catch_3

    .line 1377
    :goto_23
    :try_start_b
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1378
    .line 1379
    .line 1380
    :cond_42
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 1381
    .line 1382
    iget v0, v0, Lcom/google/android/gms/internal/ads/fM;->c:I

    .line 1383
    .line 1384
    const/4 v2, 0x1

    .line 1385
    if-ne v0, v2, :cond_43

    .line 1386
    .line 1387
    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/lM;->S:Z

    .line 1388
    .line 1389
    :cond_43
    throw v12
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_b .. :try_end_b} :catch_2

    .line 1390
    :catchall_0
    move-exception v0

    .line 1391
    :try_start_c
    monitor-exit v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1392
    :try_start_d
    throw v0
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_d .. :try_end_d} :catch_2

    .line 1393
    :goto_24
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/RL;->H:Z

    .line 1394
    .line 1395
    if-nez v2, :cond_44

    .line 1396
    .line 1397
    invoke-virtual {v9, v0}, LD0/M;->b(Ljava/lang/Exception;)V

    .line 1398
    .line 1399
    .line 1400
    const/4 v2, 0x0

    .line 1401
    return v2

    .line 1402
    :cond_44
    throw v0

    .line 1403
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final q()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 14
    .line 15
    invoke-static {v0}, LD0/a;->t(Landroid/media/AudioTrack;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/lM;->M:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lM;->f:Lcom/google/android/gms/internal/ads/WL;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/lM;->b()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/WL;->c(J)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    return v0
.end method
