.class public final Ln1/a;
.super LW0/m;
.source "SourceFile"

# interfaces
.implements Ln1/f;


# instance fields
.field public final h:J

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:J


# direct methods
.method public constructor <init>(IIJJZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, LW0/m;-><init>(IIJJZ)V

    .line 2
    .line 3
    .line 4
    iput-wide p5, p0, Ln1/a;->h:J

    .line 5
    .line 6
    iput p1, p0, Ln1/a;->i:I

    .line 7
    .line 8
    iput p2, p0, Ln1/a;->j:I

    .line 9
    .line 10
    iput-boolean p7, p0, Ln1/a;->k:Z

    .line 11
    .line 12
    const-wide/16 p1, -0x1

    .line 13
    .line 14
    cmp-long p5, p3, p1

    .line 15
    .line 16
    if-eqz p5, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-wide p3, p1

    .line 20
    :goto_0
    iput-wide p3, p0, Ln1/a;->l:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, LW0/m;->b:J

    .line 2
    .line 3
    sub-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    const-wide/32 v0, 0x7a1200

    .line 11
    .line 12
    .line 13
    mul-long p1, p1, v0

    .line 14
    .line 15
    iget v0, p0, LW0/m;->e:I

    .line 16
    .line 17
    int-to-long v0, v0

    .line 18
    div-long/2addr p1, v0

    .line 19
    return-wide p1
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln1/a;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln1/a;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Ln1/a;->i:I

    .line 2
    .line 3
    return v0
.end method
