.class public LW0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW0/F;


# instance fields
.field public final synthetic a:I

.field public final b:J

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LW0/x;->a:I

    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, LW0/x;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, LW0/x;->a:I

    .line 6
    iput-wide p1, p0, LW0/x;->b:J

    .line 7
    new-instance p1, LW0/E;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 8
    sget-object p2, LW0/G;->c:LW0/G;

    goto :goto_0

    :cond_0
    new-instance p2, LW0/G;

    invoke-direct {p2, v0, v1, p3, p4}, LW0/G;-><init>(JJ)V

    .line 9
    :goto_0
    invoke-direct {p1, p2, p2}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 10
    iput-object p1, p0, LW0/x;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;IJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LW0/x;->a:I

    iput-object p1, p0, LW0/x;->c:Ljava/lang/Object;

    iput-wide p3, p0, LW0/x;->b:J

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    .line 1
    iget v0, p0, LW0/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :pswitch_0
    const/4 v0, 0x0

    .line 9
    return v0

    .line 10
    nop

    .line 11
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final k(J)LW0/E;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-wide/from16 v1, p1

    .line 3
    .line 4
    iget v3, v0, LW0/x;->a:I

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x1

    .line 8
    iget-object v6, v0, LW0/x;->c:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v3, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v6, LY0/b;

    .line 14
    .line 15
    iget-object v3, v6, LY0/b;->i:[LY0/e;

    .line 16
    .line 17
    aget-object v3, v3, v4

    .line 18
    .line 19
    invoke-virtual {v3, v1, v2}, LY0/e;->b(J)LW0/E;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    :goto_0
    iget-object v4, v6, LY0/b;->i:[LY0/e;

    .line 24
    .line 25
    array-length v7, v4

    .line 26
    if-ge v5, v7, :cond_1

    .line 27
    .line 28
    aget-object v4, v4, v5

    .line 29
    .line 30
    invoke-virtual {v4, v1, v2}, LY0/e;->b(J)LW0/E;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v7, v4, LW0/E;->a:LW0/G;

    .line 35
    .line 36
    iget-wide v7, v7, LW0/G;->b:J

    .line 37
    .line 38
    iget-object v9, v3, LW0/E;->a:LW0/G;

    .line 39
    .line 40
    iget-wide v9, v9, LW0/G;->b:J

    .line 41
    .line 42
    cmp-long v11, v7, v9

    .line 43
    .line 44
    if-gez v11, :cond_0

    .line 45
    .line 46
    move-object v3, v4

    .line 47
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    return-object v3

    .line 51
    :pswitch_0
    check-cast v6, LW0/E;

    .line 52
    .line 53
    return-object v6

    .line 54
    :pswitch_1
    move-object v3, v6

    .line 55
    check-cast v3, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 56
    .line 57
    iget-object v7, v3, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:LW0/y;

    .line 58
    .line 59
    invoke-static {v7}, Lcom/google/android/gms/internal/measurement/H1;->j(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v7, v3, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:LW0/y;

    .line 63
    .line 64
    iget-object v8, v7, LW0/y;->a:[J

    .line 65
    .line 66
    invoke-virtual {v3, v1, v2}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    invoke-static {v8, v9, v10, v4}, Lp0/M;->e([JJZ)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    const-wide/16 v9, 0x0

    .line 75
    .line 76
    const/4 v4, -0x1

    .line 77
    if-ne v3, v4, :cond_2

    .line 78
    .line 79
    move-wide v11, v9

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    aget-wide v11, v8, v3

    .line 82
    .line 83
    :goto_1
    iget-object v7, v7, LW0/y;->b:[J

    .line 84
    .line 85
    if-ne v3, v4, :cond_3

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    aget-wide v9, v7, v3

    .line 89
    .line 90
    :goto_2
    const-wide/32 v13, 0xf4240

    .line 91
    .line 92
    .line 93
    mul-long v11, v11, v13

    .line 94
    .line 95
    move-object v4, v6

    .line 96
    check-cast v4, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 97
    .line 98
    iget v4, v4, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 99
    .line 100
    int-to-long v13, v4

    .line 101
    div-long/2addr v11, v13

    .line 102
    iget-wide v13, v0, LW0/x;->b:J

    .line 103
    .line 104
    add-long/2addr v9, v13

    .line 105
    new-instance v4, LW0/G;

    .line 106
    .line 107
    invoke-direct {v4, v11, v12, v9, v10}, LW0/G;-><init>(JJ)V

    .line 108
    .line 109
    .line 110
    cmp-long v9, v11, v1

    .line 111
    .line 112
    if-eqz v9, :cond_5

    .line 113
    .line 114
    array-length v1, v8

    .line 115
    sub-int/2addr v1, v5

    .line 116
    if-ne v3, v1, :cond_4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_4
    add-int/2addr v3, v5

    .line 120
    aget-wide v1, v8, v3

    .line 121
    .line 122
    aget-wide v8, v7, v3

    .line 123
    .line 124
    const-wide/32 v10, 0xf4240

    .line 125
    .line 126
    .line 127
    mul-long v1, v1, v10

    .line 128
    .line 129
    check-cast v6, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 130
    .line 131
    iget v3, v6, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 132
    .line 133
    int-to-long v5, v3

    .line 134
    div-long/2addr v1, v5

    .line 135
    add-long/2addr v13, v8

    .line 136
    new-instance v3, LW0/G;

    .line 137
    .line 138
    invoke-direct {v3, v1, v2, v13, v14}, LW0/G;-><init>(JJ)V

    .line 139
    .line 140
    .line 141
    new-instance v1, LW0/E;

    .line 142
    .line 143
    invoke-direct {v1, v4, v3}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 144
    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_5
    :goto_3
    new-instance v1, LW0/E;

    .line 148
    .line 149
    invoke-direct {v1, v4, v4}, LW0/E;-><init>(LW0/G;LW0/G;)V

    .line 150
    .line 151
    .line 152
    :goto_4
    return-object v1

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m()J
    .locals 2

    .line 1
    iget v0, p0, LW0/x;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, LW0/x;->b:J

    .line 7
    .line 8
    return-wide v0

    .line 9
    :pswitch_0
    iget-object v0, p0, LW0/x;->c:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
