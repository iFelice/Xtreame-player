.class public final LV0/b;
.super LB0/h;
.source "SourceFile"


# instance fields
.field public final G:Lw0/g;

.field public final H:Lp0/E;

.field public I:LV0/a;

.field public J:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-direct {p0, v0}, LB0/h;-><init>(I)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lw0/g;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-direct {v0, v2, v1}, Lw0/g;-><init>(II)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, LV0/b;->G:Lw0/g;

    .line 13
    .line 14
    new-instance v0, Lp0/E;

    .line 15
    .line 16
    invoke-direct {v0}, Lp0/E;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, LV0/b;->H:Lp0/E;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "CameraMotionRenderer"

    .line 2
    .line 3
    return-object v0
.end method

.method public final handleMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    check-cast p2, LV0/a;

    .line 6
    .line 7
    iput-object p2, p0, LV0/b;->I:LV0/a;

    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final isEnded()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, LB0/h;->hasReadStreamToEnd()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final isReady()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final onDisabled()V
    .locals 1

    .line 1
    iget-object v0, p0, LV0/b;->I:LV0/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, LV0/a;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onPositionReset(JZ)V
    .locals 0

    .line 1
    const-wide/high16 p1, -0x8000000000000000L

    .line 2
    .line 3
    iput-wide p1, p0, LV0/b;->J:J

    .line 4
    .line 5
    iget-object p1, p0, LV0/b;->I:LV0/a;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, LV0/a;->c()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final render(JJ)V
    .locals 5

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, LB0/h;->hasReadStreamToEnd()Z

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    if-nez p3, :cond_7

    .line 6
    .line 7
    iget-wide p3, p0, LV0/b;->J:J

    .line 8
    .line 9
    const-wide/32 v0, 0x186a0

    .line 10
    .line 11
    .line 12
    add-long/2addr v0, p1

    .line 13
    cmp-long v2, p3, v0

    .line 14
    .line 15
    if-gez v2, :cond_7

    .line 16
    .line 17
    iget-object p3, p0, LV0/b;->G:Lw0/g;

    .line 18
    .line 19
    invoke-virtual {p3}, Lw0/g;->clear()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, LB0/h;->getFormatHolder()LB0/Z;

    .line 23
    .line 24
    .line 25
    move-result-object p4

    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p4, p3, v0}, LB0/h;->readSource(LB0/Z;Lw0/g;I)I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    const/4 v1, -0x4

    .line 32
    if-ne p4, v1, :cond_7

    .line 33
    .line 34
    invoke-virtual {p3}, Lw0/a;->isEndOfStream()Z

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    if-eqz p4, :cond_1

    .line 39
    .line 40
    goto :goto_4

    .line 41
    :cond_1
    iget-wide v1, p3, Lw0/g;->K:J

    .line 42
    .line 43
    iput-wide v1, p0, LV0/b;->J:J

    .line 44
    .line 45
    invoke-virtual {p0}, LB0/h;->getLastResetPositionUs()J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    cmp-long p4, v1, v3

    .line 50
    .line 51
    if-gez p4, :cond_2

    .line 52
    .line 53
    const/4 p4, 0x1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 p4, 0x0

    .line 56
    :goto_1
    iget-object v1, p0, LV0/b;->I:LV0/a;

    .line 57
    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    if-eqz p4, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {p3}, Lw0/g;->g()V

    .line 64
    .line 65
    .line 66
    iget-object p3, p3, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 67
    .line 68
    sget-object p4, Lp0/M;->a:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/nio/Buffer;->remaining()I

    .line 71
    .line 72
    .line 73
    move-result p4

    .line 74
    const/16 v1, 0x10

    .line 75
    .line 76
    if-eq p4, v1, :cond_4

    .line 77
    .line 78
    const/4 p3, 0x0

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    .line 81
    .line 82
    .line 83
    move-result-object p4

    .line 84
    invoke-virtual {p3}, Ljava/nio/Buffer;->limit()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    iget-object v2, p0, LV0/b;->H:Lp0/E;

    .line 89
    .line 90
    invoke-virtual {v2, v1, p4}, Lp0/E;->J(I[B)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    add-int/lit8 p3, p3, 0x4

    .line 98
    .line 99
    invoke-virtual {v2, p3}, Lp0/E;->L(I)V

    .line 100
    .line 101
    .line 102
    const/4 p3, 0x3

    .line 103
    new-array p4, p3, [F

    .line 104
    .line 105
    :goto_2
    if-ge v0, p3, :cond_5

    .line 106
    .line 107
    invoke-virtual {v2}, Lp0/E;->n()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    aput v1, p4, v0

    .line 116
    .line 117
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    move-object p3, p4

    .line 121
    :goto_3
    if-nez p3, :cond_6

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    iget-object p4, p0, LV0/b;->I:LV0/a;

    .line 125
    .line 126
    iget-wide v0, p0, LV0/b;->J:J

    .line 127
    .line 128
    invoke-virtual {p0}, LB0/h;->getStreamOffsetUs()J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    sub-long/2addr v0, v2

    .line 133
    invoke-interface {p4, v0, v1, p3}, LV0/a;->a(J[F)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_0

    .line 137
    .line 138
    :cond_7
    :goto_4
    return-void
.end method

.method public final supportsFormat(Lm0/t;)I
    .locals 1

    .line 1
    const-string v0, "application/x-camera-motion"

    .line 2
    .line 3
    iget-object p1, p1, Lm0/t;->o:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    invoke-static {p1, v0, v0, v0}, LA0/O;->o(IIII)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0, v0, v0, v0}, LA0/O;->o(IIII)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    :goto_0
    return p1
.end method
