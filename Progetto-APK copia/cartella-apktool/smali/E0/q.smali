.class public final LE0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO0/U;


# instance fields
.field public final G:Lm0/t;

.field public final H:LF/i;

.field public I:[J

.field public J:Z

.field public K:LF0/g;

.field public L:Z

.field public M:I

.field public N:J


# direct methods
.method public constructor <init>(LF0/g;Lm0/t;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, LE0/q;->G:Lm0/t;

    .line 5
    .line 6
    iput-object p1, p0, LE0/q;->K:LF0/g;

    .line 7
    .line 8
    new-instance p2, LF/i;

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    invoke-direct {p2, v0}, LF/i;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, LE0/q;->H:LF/i;

    .line 15
    .line 16
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    iput-wide v0, p0, LE0/q;->N:J

    .line 22
    .line 23
    iget-object p2, p1, LF0/g;->b:[J

    .line 24
    .line 25
    iput-object p2, p0, LE0/q;->I:[J

    .line 26
    .line 27
    invoke-virtual {p0, p1, p3}, LE0/q;->a(LF0/g;Z)V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final a(LF0/g;Z)V
    .locals 9

    .line 1
    iget v0, p0, LE0/q;->M:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-wide v5, v2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v4, p0, LE0/q;->I:[J

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    aget-wide v5, v4, v0

    .line 17
    .line 18
    :goto_0
    iput-boolean p2, p0, LE0/q;->J:Z

    .line 19
    .line 20
    iput-object p1, p0, LE0/q;->K:LF0/g;

    .line 21
    .line 22
    iget-object p1, p1, LF0/g;->b:[J

    .line 23
    .line 24
    iput-object p1, p0, LE0/q;->I:[J

    .line 25
    .line 26
    iget-wide v7, p0, LE0/q;->N:J

    .line 27
    .line 28
    cmp-long p2, v7, v2

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    invoke-static {p1, v7, v8, v1}, Lp0/M;->a([JJZ)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, LE0/q;->M:I

    .line 37
    .line 38
    iget-boolean p2, p0, LE0/q;->J:Z

    .line 39
    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget-object p2, p0, LE0/q;->I:[J

    .line 43
    .line 44
    array-length p2, p2

    .line 45
    if-ne p1, p2, :cond_1

    .line 46
    .line 47
    move-wide v2, v7

    .line 48
    :cond_1
    iput-wide v2, p0, LE0/q;->N:J

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    cmp-long p2, v5, v2

    .line 52
    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    const/4 p2, 0x0

    .line 56
    invoke-static {p1, v5, v6, p2}, Lp0/M;->a([JJZ)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iput p1, p0, LE0/q;->M:I

    .line 61
    .line 62
    :cond_3
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final j(J)I
    .locals 3

    .line 1
    iget v0, p0, LE0/q;->M:I

    .line 2
    .line 3
    iget-object v1, p0, LE0/q;->I:[J

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v1, p1, p2, v2}, Lp0/M;->a([JJZ)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iget p2, p0, LE0/q;->M:I

    .line 15
    .line 16
    sub-int p2, p1, p2

    .line 17
    .line 18
    iput p1, p0, LE0/q;->M:I

    .line 19
    .line 20
    return p2
.end method

.method public final r(LB0/Z;Lw0/g;I)I
    .locals 6

    .line 1
    iget v0, p0, LE0/q;->M:I

    .line 2
    .line 3
    iget-object v1, p0, LE0/q;->I:[J

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    const/4 v3, -0x4

    .line 13
    const/4 v4, 0x4

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    iget-boolean v5, p0, LE0/q;->J:Z

    .line 17
    .line 18
    if-nez v5, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2, v4}, Lw0/a;->setFlags(I)V

    .line 21
    .line 22
    .line 23
    return v3

    .line 24
    :cond_1
    and-int/lit8 v5, p3, 0x2

    .line 25
    .line 26
    if-nez v5, :cond_6

    .line 27
    .line 28
    iget-boolean v5, p0, LE0/q;->L:Z

    .line 29
    .line 30
    if-nez v5, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    if-eqz v1, :cond_3

    .line 34
    .line 35
    const/4 p1, -0x3

    .line 36
    return p1

    .line 37
    :cond_3
    and-int/lit8 p1, p3, 0x1

    .line 38
    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    add-int/lit8 p1, v0, 0x1

    .line 42
    .line 43
    iput p1, p0, LE0/q;->M:I

    .line 44
    .line 45
    :cond_4
    and-int/lit8 p1, p3, 0x4

    .line 46
    .line 47
    if-nez p1, :cond_5

    .line 48
    .line 49
    iget-object p1, p0, LE0/q;->K:LF0/g;

    .line 50
    .line 51
    iget-object p1, p1, LF0/g;->a:[Lg1/a;

    .line 52
    .line 53
    aget-object p1, p1, v0

    .line 54
    .line 55
    iget-object p3, p0, LE0/q;->H:LF/i;

    .line 56
    .line 57
    invoke-virtual {p3, p1}, LF/i;->c(Lg1/a;)[B

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    array-length p3, p1

    .line 62
    invoke-virtual {p2, p3}, Lw0/g;->f(I)V

    .line 63
    .line 64
    .line 65
    iget-object p3, p2, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 66
    .line 67
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    :cond_5
    iget-object p1, p0, LE0/q;->I:[J

    .line 71
    .line 72
    aget-wide v0, p1, v0

    .line 73
    .line 74
    iput-wide v0, p2, Lw0/g;->K:J

    .line 75
    .line 76
    invoke-virtual {p2, v2}, Lw0/a;->setFlags(I)V

    .line 77
    .line 78
    .line 79
    return v3

    .line 80
    :cond_6
    :goto_1
    iget-object p2, p0, LE0/q;->G:Lm0/t;

    .line 81
    .line 82
    iput-object p2, p1, LB0/Z;->b:Lm0/t;

    .line 83
    .line 84
    iput-boolean v2, p0, LE0/q;->L:Z

    .line 85
    .line 86
    const/4 p1, -0x5

    .line 87
    return p1
.end method
