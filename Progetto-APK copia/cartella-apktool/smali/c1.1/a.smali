.class public final Lc1/a;
.super Lc1/d;
.source "SourceFile"


# static fields
.field public static final K:[I


# instance fields
.field public H:Z

.field public I:Z

.field public J:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x5622

    .line 2
    .line 3
    const v1, 0xac44

    .line 4
    .line 5
    .line 6
    const/16 v2, 0x1588

    .line 7
    .line 8
    const/16 v3, 0x2b11

    .line 9
    .line 10
    filled-new-array {v2, v3, v0, v1}, [I

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lc1/a;->K:[I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final n(Lp0/E;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc1/a;->H:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    shr-int/lit8 v0, p1, 0x4

    .line 11
    .line 12
    and-int/lit8 v0, v0, 0xf

    .line 13
    .line 14
    iput v0, p0, Lc1/a;->J:I

    .line 15
    .line 16
    const-string v2, "video/x-flv"

    .line 17
    .line 18
    const/4 v3, 0x2

    .line 19
    if-ne v0, v3, :cond_0

    .line 20
    .line 21
    shr-int/2addr p1, v3

    .line 22
    and-int/lit8 p1, p1, 0x3

    .line 23
    .line 24
    sget-object v0, Lc1/a;->K:[I

    .line 25
    .line 26
    aget p1, v0, p1

    .line 27
    .line 28
    new-instance v0, Lm0/s;

    .line 29
    .line 30
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iput-object v2, v0, Lm0/s;->m:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "audio/mpeg"

    .line 40
    .line 41
    invoke-static {v2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iput-object v2, v0, Lm0/s;->n:Ljava/lang/String;

    .line 46
    .line 47
    iput v1, v0, Lm0/s;->F:I

    .line 48
    .line 49
    iput p1, v0, Lm0/s;->G:I

    .line 50
    .line 51
    invoke-virtual {v0}, Lm0/s;->a()Lm0/t;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, LW0/L;

    .line 58
    .line 59
    invoke-interface {v0, p1}, LW0/L;->b(Lm0/t;)V

    .line 60
    .line 61
    .line 62
    iput-boolean v1, p0, Lc1/a;->I:Z

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_0
    const/4 p1, 0x7

    .line 66
    if-eq v0, p1, :cond_3

    .line 67
    .line 68
    const/16 v3, 0x8

    .line 69
    .line 70
    if-ne v0, v3, :cond_1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/16 p1, 0xa

    .line 74
    .line 75
    if-ne v0, p1, :cond_2

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_2
    new-instance p1, LO0/a0;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v1, "Audio format not supported: "

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget v1, p0, Lc1/a;->J:I

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-direct {p1, v0}, LO0/a0;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1

    .line 100
    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    .line 101
    .line 102
    const-string p1, "audio/g711-alaw"

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    const-string p1, "audio/g711-mlaw"

    .line 106
    .line 107
    :goto_1
    new-instance v0, Lm0/s;

    .line 108
    .line 109
    invoke-direct {v0}, Lm0/s;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iput-object v2, v0, Lm0/s;->m:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {p1}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, v0, Lm0/s;->n:Ljava/lang/String;

    .line 123
    .line 124
    iput v1, v0, Lm0/s;->F:I

    .line 125
    .line 126
    const/16 p1, 0x1f40

    .line 127
    .line 128
    iput p1, v0, Lm0/s;->G:I

    .line 129
    .line 130
    invoke-virtual {v0}, Lm0/s;->a()Lm0/t;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v0, LW0/L;

    .line 137
    .line 138
    invoke-interface {v0, p1}, LW0/L;->b(Lm0/t;)V

    .line 139
    .line 140
    .line 141
    iput-boolean v1, p0, Lc1/a;->I:Z

    .line 142
    .line 143
    :goto_2
    iput-boolean v1, p0, Lc1/a;->H:Z

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_5
    invoke-virtual {p1, v1}, Lp0/E;->M(I)V

    .line 147
    .line 148
    .line 149
    :goto_3
    return v1
.end method

.method public final o(JLp0/E;)Z
    .locals 12

    .line 1
    iget v0, p0, Lc1/a;->J:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3}, Lp0/E;->a()I

    .line 8
    .line 9
    .line 10
    move-result v7

    .line 11
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, LW0/L;

    .line 14
    .line 15
    invoke-interface {v0, v7, p3}, LW0/L;->e(ILp0/E;)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v3, p3

    .line 21
    check-cast v3, LW0/L;

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v6, 0x1

    .line 25
    const/4 v8, 0x0

    .line 26
    move-wide v4, p1

    .line 27
    invoke-interface/range {v3 .. v9}, LW0/L;->d(JIIILW0/K;)V

    .line 28
    .line 29
    .line 30
    return v2

    .line 31
    :cond_0
    invoke-virtual {p3}, Lp0/E;->z()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    iget-boolean v3, p0, Lc1/a;->I:Z

    .line 39
    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    invoke-virtual {p3}, Lp0/E;->a()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    new-array p2, p1, [B

    .line 47
    .line 48
    invoke-virtual {p3, v1, p2, p1}, Lp0/E;->j(I[BI)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lp0/D;

    .line 52
    .line 53
    const/4 p3, 0x0

    .line 54
    invoke-direct {p1, p2, v1, p3}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1, v1}, LW0/a;->g(Lp0/D;Z)LW0/r;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance p3, Lm0/s;

    .line 62
    .line 63
    invoke-direct {p3}, Lm0/s;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v0, "video/x-flv"

    .line 67
    .line 68
    invoke-static {v0}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p3, Lm0/s;->m:Ljava/lang/String;

    .line 73
    .line 74
    const-string v0, "audio/mp4a-latm"

    .line 75
    .line 76
    invoke-static {v0}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p3, Lm0/s;->n:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v0, p1, LW0/r;->a:Ljava/lang/String;

    .line 83
    .line 84
    iput-object v0, p3, Lm0/s;->j:Ljava/lang/String;

    .line 85
    .line 86
    iget v0, p1, LW0/r;->c:I

    .line 87
    .line 88
    iput v0, p3, Lm0/s;->F:I

    .line 89
    .line 90
    iget p1, p1, LW0/r;->b:I

    .line 91
    .line 92
    iput p1, p3, Lm0/s;->G:I

    .line 93
    .line 94
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p3, Lm0/s;->q:Ljava/util/List;

    .line 99
    .line 100
    new-instance p1, Lm0/t;

    .line 101
    .line 102
    invoke-direct {p1, p3}, Lm0/t;-><init>(Lm0/s;)V

    .line 103
    .line 104
    .line 105
    iget-object p2, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p2, LW0/L;

    .line 108
    .line 109
    invoke-interface {p2, p1}, LW0/L;->b(Lm0/t;)V

    .line 110
    .line 111
    .line 112
    iput-boolean v2, p0, Lc1/a;->I:Z

    .line 113
    .line 114
    return v1

    .line 115
    :cond_1
    iget v3, p0, Lc1/a;->J:I

    .line 116
    .line 117
    const/16 v4, 0xa

    .line 118
    .line 119
    if-ne v3, v4, :cond_3

    .line 120
    .line 121
    if-ne v0, v2, :cond_2

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_2
    return v1

    .line 125
    :cond_3
    :goto_0
    invoke-virtual {p3}, Lp0/E;->a()I

    .line 126
    .line 127
    .line 128
    move-result v9

    .line 129
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v0, LW0/L;

    .line 132
    .line 133
    invoke-interface {v0, v9, p3}, LW0/L;->e(ILp0/E;)V

    .line 134
    .line 135
    .line 136
    iget-object p3, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 137
    .line 138
    move-object v5, p3

    .line 139
    check-cast v5, LW0/L;

    .line 140
    .line 141
    const/4 v11, 0x0

    .line 142
    const/4 v8, 0x1

    .line 143
    const/4 v10, 0x0

    .line 144
    move-wide v6, p1

    .line 145
    invoke-interface/range {v5 .. v11}, LW0/L;->d(JIIILW0/K;)V

    .line 146
    .line 147
    .line 148
    return v2
.end method
