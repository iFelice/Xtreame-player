.class public Lm0/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LU4/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lm0/y;

    .line 7
    .line 8
    invoke-direct {v1, v0}, Lm0/y;-><init>(LU4/b;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 13
    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x5

    .line 32
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x6

    .line 36
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x7

    .line 40
    invoke-static {v0}, Lp0/M;->L(I)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(LU4/b;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    .line 11
    iput-wide v0, p0, Lm0/y;->a:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lm0/y;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lm0/y;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-wide v3, p0, Lm0/y;->a:J

    .line 17
    .line 18
    iget-wide v5, p1, Lm0/y;->a:J

    .line 19
    .line 20
    cmp-long p1, v3, v5

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    long-to-int v1, v0

    .line 4
    mul-int/lit8 v1, v1, 0x1f

    .line 5
    .line 6
    const/16 v0, 0x20

    .line 7
    .line 8
    iget-wide v2, p0, Lm0/y;->a:J

    .line 9
    .line 10
    ushr-long v4, v2, v0

    .line 11
    .line 12
    xor-long/2addr v2, v4

    .line 13
    long-to-int v0, v2

    .line 14
    add-int/2addr v1, v0

    .line 15
    const v0, 0xe1781

    .line 16
    .line 17
    .line 18
    mul-int v1, v1, v0

    .line 19
    .line 20
    return v1
.end method
