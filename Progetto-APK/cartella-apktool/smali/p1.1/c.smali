.class public final Lp1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp1/h;


# instance fields
.field public G:Landroidx/media3/extractor/FlacStreamMetadata;

.field public H:LW0/y;

.field public I:J

.field public J:J


# virtual methods
.method public final J(LW0/t;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lp1/c;->J:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    const-wide/16 v4, -0x1

    .line 6
    .line 7
    cmp-long p1, v0, v2

    .line 8
    .line 9
    if-ltz p1, :cond_0

    .line 10
    .line 11
    const-wide/16 v2, 0x2

    .line 12
    .line 13
    add-long/2addr v0, v2

    .line 14
    neg-long v0, v0

    .line 15
    iput-wide v4, p0, Lp1/c;->J:J

    .line 16
    .line 17
    return-wide v0

    .line 18
    :cond_0
    return-wide v4
.end method

.method public final L(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp1/c;->H:LW0/y;

    .line 2
    .line 3
    iget-object v0, v0, LW0/y;->a:[J

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v0, p1, p2, v1}, Lp0/M;->e([JJZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    aget-wide p1, v0, p1

    .line 11
    .line 12
    iput-wide p1, p0, Lp1/c;->J:J

    .line 13
    .line 14
    return-void
.end method

.method public final w()LW0/F;
    .locals 6

    .line 1
    iget-wide v0, p0, Lp1/c;->I:J

    .line 2
    .line 3
    const-wide/16 v2, -0x1

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    cmp-long v5, v0, v2

    .line 7
    .line 8
    if-eqz v5, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 14
    .line 15
    .line 16
    new-instance v0, LW0/x;

    .line 17
    .line 18
    iget-object v1, p0, Lp1/c;->G:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 19
    .line 20
    iget-wide v2, p0, Lp1/c;->I:J

    .line 21
    .line 22
    invoke-direct {v0, v1, v4, v2, v3}, LW0/x;-><init>(Ljava/lang/Object;IJ)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method
