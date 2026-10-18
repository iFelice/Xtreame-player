.class public final LP2/l;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final synthetic G:I

.field public H:I


# direct methods
.method public constructor <init>(ILjava/io/InputStream;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LP2/l;->G:I

    .line 2
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3
    iput p1, p0, LP2/l;->H:I

    return-void
.end method

.method public constructor <init>(LP2/f;)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    iput v0, p0, LP2/l;->G:I

    .line 5
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 p1, -0x80000000

    .line 6
    iput p1, p0, LP2/l;->H:I

    return-void
.end method

.method private declared-synchronized E(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, LP2/l;->H:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method private declared-synchronized N()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V

    .line 3
    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    iput v0, p0, LP2/l;->H:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method


# virtual methods
.method public final O(J)V
    .locals 4

    .line 1
    iget v0, p0, LP2/l;->H:I

    .line 2
    .line 3
    const/high16 v1, -0x80000000

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const-wide/16 v1, -0x1

    .line 8
    .line 9
    cmp-long v3, p1, v1

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    int-to-long v0, v0

    .line 14
    sub-long/2addr v0, p1

    .line 15
    long-to-int p1, v0

    .line 16
    iput p1, p0, LP2/l;->H:I

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final available()I
    .locals 2

    .line 1
    iget v0, p0, LP2/l;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, LP2/l;->H:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0

    .line 17
    :pswitch_0
    iget v0, p0, LP2/l;->H:I

    .line 18
    .line 19
    const/high16 v1, -0x80000000

    .line 20
    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    :goto_0
    return v0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(J)J
    .locals 4

    .line 1
    iget v0, p0, LP2/l;->H:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 p1, -0x1

    .line 6
    .line 7
    return-wide p1

    .line 8
    :cond_0
    const/high16 v1, -0x80000000

    .line 9
    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    int-to-long v1, v0

    .line 13
    cmp-long v3, p1, v1

    .line 14
    .line 15
    if-lez v3, :cond_1

    .line 16
    .line 17
    int-to-long p1, v0

    .line 18
    :cond_1
    return-wide p1
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, LP2/l;->G:I

    .line 3
    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1}, LP2/l;->E(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_0
    monitor-exit p0

    .line 20
    throw p1

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 8

    .line 1
    iget v0, p0, LP2/l;->G:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 2
    iget v0, p0, LP2/l;->H:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    .line 4
    iget v0, p0, LP2/l;->H:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LP2/l;->H:I

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    const-wide/16 v2, 0x1

    .line 5
    invoke-virtual {p0, v2, v3}, LP2/l;->k(J)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v1

    .line 7
    invoke-virtual {p0, v2, v3}, LP2/l;->O(J)V

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 4

    .line 8
    iget v0, p0, LP2/l;->G:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 9
    iget v0, p0, LP2/l;->H:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 11
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    .line 12
    iget p1, p0, LP2/l;->H:I

    sub-int/2addr p1, v1

    iput p1, p0, LP2/l;->H:I

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    int-to-long v2, p3

    .line 13
    invoke-virtual {p0, v2, v3}, LP2/l;->k(J)J

    move-result-wide v2

    long-to-int p3, v2

    if-ne p3, v1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    int-to-long p1, v1

    .line 15
    invoke-virtual {p0, p1, p2}, LP2/l;->O(J)V

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, LP2/l;->G:I

    .line 3
    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/io/FilterInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_0

    .line 14
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, LP2/l;->N()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_0
    monitor-exit p0

    .line 20
    throw v0

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final skip(J)J
    .locals 3

    .line 1
    iget v0, p0, LP2/l;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p0, LP2/l;->H:I

    .line 7
    .line 8
    int-to-long v0, v0

    .line 9
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    long-to-int p2, p1

    .line 18
    if-ltz p2, :cond_0

    .line 19
    .line 20
    iget p1, p0, LP2/l;->H:I

    .line 21
    .line 22
    sub-int/2addr p1, p2

    .line 23
    iput p1, p0, LP2/l;->H:I

    .line 24
    .line 25
    :cond_0
    int-to-long p1, p2

    .line 26
    return-wide p1

    .line 27
    :pswitch_0
    invoke-virtual {p0, p1, p2}, LP2/l;->k(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    const-wide/16 v0, -0x1

    .line 32
    .line 33
    cmp-long v2, p1, v0

    .line 34
    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    const-wide/16 p1, 0x0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide p1

    .line 44
    invoke-virtual {p0, p1, p2}, LP2/l;->O(J)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-wide p1

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
