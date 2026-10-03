.class public final Lu6/i;
.super Lu6/f;
.source "SourceFile"


# static fields
.field public static final J:[Ljava/lang/Object;


# instance fields
.field public G:I

.field public H:[Ljava/lang/Object;

.field public I:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    sput-object v0, Lu6/i;->J:[Ljava/lang/Object;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu6/f;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lu6/i;->J:[Ljava/lang/Object;

    .line 5
    .line 6
    iput-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lu6/i;->I:I

    .line 2
    invoke-static {p1, v0}, LZ5/m;->b(II)V

    .line 3
    iget v0, p0, Lu6/i;->I:I

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lu6/i;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lu6/i;->addFirst(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 7
    iget v0, p0, Lu6/i;->I:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 8
    invoke-virtual {p0, v0}, Lu6/i;->l(I)V

    .line 9
    iget v0, p0, Lu6/i;->G:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lu6/i;->q(I)I

    move-result v0

    .line 10
    iget v2, p0, Lu6/i;->I:I

    add-int/lit8 v3, v2, 0x1

    shr-int/2addr v3, v1

    const/4 v4, 0x0

    if-ge p1, v3, :cond_5

    .line 11
    const-string p1, "<this>"

    if-nez v0, :cond_2

    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 12
    invoke-static {v0, p1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v0, v0

    :cond_2
    sub-int/2addr v0, v1

    .line 14
    iget v2, p0, Lu6/i;->G:I

    if-nez v2, :cond_3

    .line 15
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 16
    invoke-static {v2, p1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    array-length p1, v2

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_3
    add-int/lit8 p1, v2, -0x1

    .line 18
    :goto_0
    iget v2, p0, Lu6/i;->G:I

    if-lt v0, v2, :cond_4

    .line 19
    iget-object v3, p0, Lu6/i;->H:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, p1

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 20
    invoke-static {v3, v2, v3, v4, v5}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object v3, p0, Lu6/i;->H:[Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    array-length v6, v3

    invoke-static {v3, v5, v3, v2, v6}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 22
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    array-length v3, v2

    sub-int/2addr v3, v1

    aget-object v5, v2, v4

    aput-object v5, v2, v3

    add-int/lit8 v3, v0, 0x1

    .line 23
    invoke-static {v2, v4, v2, v1, v3}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 24
    :goto_1
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 25
    iput p1, p0, Lu6/i;->G:I

    goto :goto_3

    .line 26
    :cond_5
    iget p1, p0, Lu6/i;->G:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lu6/i;->q(I)I

    move-result p1

    if-ge v0, p1, :cond_6

    .line 27
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3, v2, v0, p1}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_2

    .line 28
    :cond_6
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    invoke-static {v2, v1, v2, v4, p1}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 29
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aput-object v2, p1, v4

    add-int/lit8 v2, v0, 0x1

    .line 30
    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, v2, p1, v0, v3}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 31
    :goto_2
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 32
    :goto_3
    iget p1, p0, Lu6/i;->I:I

    add-int/2addr p1, v1

    .line 33
    iput p1, p0, Lu6/i;->I:I

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lu6/i;->addLast(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 8

    .line 1
    const-string v0, "elements"

    invoke-static {p2, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lu6/i;->I:I

    .line 3
    invoke-static {p1, v0}, LZ5/m;->b(II)V

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 5
    :cond_0
    iget v0, p0, Lu6/i;->I:I

    if-ne p1, v0, :cond_1

    .line 6
    invoke-virtual {p0, p2}, Lu6/i;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 8
    iget v0, p0, Lu6/i;->I:I

    .line 9
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lu6/i;->l(I)V

    .line 10
    iget v0, p0, Lu6/i;->G:I

    .line 11
    iget v2, p0, Lu6/i;->I:I

    add-int/2addr v2, v0

    .line 12
    invoke-virtual {p0, v2}, Lu6/i;->q(I)I

    move-result v0

    .line 13
    iget v2, p0, Lu6/i;->G:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lu6/i;->q(I)I

    move-result v2

    .line 14
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    .line 15
    iget v4, p0, Lu6/i;->I:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_6

    .line 16
    iget p1, p0, Lu6/i;->G:I

    sub-int v0, p1, v3

    if-lt v2, p1, :cond_4

    if-ltz v0, :cond_2

    .line 17
    iget-object v1, p0, Lu6/i;->H:[Ljava/lang/Object;

    invoke-static {v1, v0, v1, p1, v2}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_0

    .line 18
    :cond_2
    iget-object v4, p0, Lu6/i;->H:[Ljava/lang/Object;

    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v6, v2, p1

    .line 19
    array-length v7, v4

    sub-int/2addr v7, v0

    if-lt v7, v6, :cond_3

    .line 20
    invoke-static {v4, v0, v4, p1, v2}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_0

    :cond_3
    add-int v6, p1, v7

    .line 21
    invoke-static {v4, v0, v4, p1, v6}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 22
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    iget v4, p0, Lu6/i;->G:I

    add-int/2addr v4, v7

    invoke-static {p1, v1, p1, v4, v2}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_0

    .line 23
    :cond_4
    iget-object v4, p0, Lu6/i;->H:[Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v4, v0, v4, p1, v6}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    if-lt v3, v2, :cond_5

    .line 24
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, v4, p1, v1, v2}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_0

    .line 25
    :cond_5
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, v4, p1, v1, v3}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 26
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    invoke-static {p1, v1, p1, v3, v2}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 27
    :goto_0
    iput v0, p0, Lu6/i;->G:I

    sub-int/2addr v2, v3

    .line 28
    invoke-virtual {p0, v2}, Lu6/i;->o(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lu6/i;->i(ILjava/util/Collection;)V

    goto :goto_2

    :cond_6
    add-int p1, v2, v3

    if-ge v2, v0, :cond_9

    add-int/2addr v3, v0

    .line 29
    iget-object v4, p0, Lu6/i;->H:[Ljava/lang/Object;

    array-length v6, v4

    if-gt v3, v6, :cond_7

    .line 30
    invoke-static {v4, p1, v4, v2, v0}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_1

    .line 31
    :cond_7
    array-length v6, v4

    if-lt p1, v6, :cond_8

    .line 32
    array-length v1, v4

    sub-int/2addr p1, v1

    invoke-static {v4, p1, v4, v2, v0}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_1

    .line 33
    :cond_8
    array-length v6, v4

    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    .line 34
    invoke-static {v4, v1, v4, v3, v0}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 35
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    invoke-static {v0, p1, v0, v2, v3}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_1

    .line 36
    :cond_9
    iget-object v4, p0, Lu6/i;->H:[Ljava/lang/Object;

    invoke-static {v4, v3, v4, v1, v0}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 37
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    array-length v4, v0

    if-lt p1, v4, :cond_a

    .line 38
    array-length v1, v0

    sub-int/2addr p1, v1

    array-length v1, v0

    invoke-static {v0, p1, v0, v2, v1}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_1

    .line 39
    :cond_a
    array-length v4, v0

    sub-int/2addr v4, v3

    array-length v6, v0

    invoke-static {v0, v1, v0, v4, v6}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 40
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, p1, v0, v2, v1}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 41
    :goto_1
    invoke-virtual {p0, v2, p2}, Lu6/i;->i(ILjava/util/Collection;)V

    :goto_2
    return v5
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    .line 42
    const-string v0, "elements"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 44
    :cond_0
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 45
    invoke-virtual {p0}, Lu6/i;->b()I

    move-result v0

    .line 46
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lu6/i;->l(I)V

    .line 47
    iget v0, p0, Lu6/i;->G:I

    .line 48
    invoke-virtual {p0}, Lu6/i;->b()I

    move-result v1

    add-int/2addr v1, v0

    .line 49
    invoke-virtual {p0, v1}, Lu6/i;->q(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lu6/i;->i(ILjava/util/Collection;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lu6/i;->I:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lu6/i;->l(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lu6/i;->G:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 16
    .line 17
    const-string v1, "<this>"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    array-length v0, v0

    .line 23
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 24
    .line 25
    iput v0, p0, Lu6/i;->G:I

    .line 26
    .line 27
    iget-object v1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 28
    .line 29
    aput-object p1, v1, v0

    .line 30
    .line 31
    iget p1, p0, Lu6/i;->I:I

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    iput p1, p0, Lu6/i;->I:I

    .line 36
    .line 37
    return-void
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lu6/i;->b()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Lu6/i;->l(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 14
    .line 15
    iget v1, p0, Lu6/i;->G:I

    .line 16
    .line 17
    invoke-virtual {p0}, Lu6/i;->b()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    add-int/2addr v2, v1

    .line 22
    invoke-virtual {p0, v2}, Lu6/i;->q(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    aput-object p1, v0, v1

    .line 27
    .line 28
    invoke-virtual {p0}, Lu6/i;->b()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    iput p1, p0, Lu6/i;->I:I

    .line 35
    .line 36
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lu6/i;->I:I

    .line 2
    .line 3
    return v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lu6/i;->I:I

    .line 2
    .line 3
    invoke-static {p1, v0}, LZ5/m;->a(II)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Ld2/v;->m(Ljava/util/List;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lu6/i;->removeLast()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lu6/i;->removeFirst()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_1
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lu6/i;->G:I

    .line 28
    .line 29
    add-int/2addr v0, p1

    .line 30
    invoke-virtual {p0, v0}, Lu6/i;->q(I)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 35
    .line 36
    aget-object v2, v1, v0

    .line 37
    .line 38
    iget v3, p0, Lu6/i;->I:I

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    shr-int/2addr v3, v4

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x0

    .line 44
    if-ge p1, v3, :cond_3

    .line 45
    .line 46
    iget p1, p0, Lu6/i;->G:I

    .line 47
    .line 48
    if-lt v0, p1, :cond_2

    .line 49
    .line 50
    add-int/lit8 v3, p1, 0x1

    .line 51
    .line 52
    invoke-static {v1, v3, v1, p1, v0}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {v1, v4, v1, v6, v0}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 60
    .line 61
    array-length v0, p1

    .line 62
    sub-int/2addr v0, v4

    .line 63
    aget-object v0, p1, v0

    .line 64
    .line 65
    aput-object v0, p1, v6

    .line 66
    .line 67
    iget v0, p0, Lu6/i;->G:I

    .line 68
    .line 69
    add-int/lit8 v1, v0, 0x1

    .line 70
    .line 71
    array-length v3, p1

    .line 72
    sub-int/2addr v3, v4

    .line 73
    invoke-static {p1, v1, p1, v0, v3}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 77
    .line 78
    iget v0, p0, Lu6/i;->G:I

    .line 79
    .line 80
    aput-object v5, p1, v0

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lu6/i;->n(I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lu6/i;->G:I

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    iget p1, p0, Lu6/i;->G:I

    .line 90
    .line 91
    invoke-static {p0}, Ld2/v;->m(Ljava/util/List;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    add-int/2addr v1, p1

    .line 96
    invoke-virtual {p0, v1}, Lu6/i;->q(I)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-gt v0, p1, :cond_4

    .line 101
    .line 102
    iget-object v1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 103
    .line 104
    add-int/lit8 v3, v0, 0x1

    .line 105
    .line 106
    add-int/lit8 v6, p1, 0x1

    .line 107
    .line 108
    invoke-static {v1, v0, v1, v3, v6}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    iget-object v1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 113
    .line 114
    add-int/lit8 v3, v0, 0x1

    .line 115
    .line 116
    array-length v7, v1

    .line 117
    invoke-static {v1, v0, v1, v3, v7}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 121
    .line 122
    array-length v1, v0

    .line 123
    sub-int/2addr v1, v4

    .line 124
    aget-object v3, v0, v6

    .line 125
    .line 126
    aput-object v3, v0, v1

    .line 127
    .line 128
    add-int/lit8 v1, p1, 0x1

    .line 129
    .line 130
    invoke-static {v0, v6, v0, v4, v1}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 131
    .line 132
    .line 133
    :goto_1
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 134
    .line 135
    aput-object v5, v0, p1

    .line 136
    .line 137
    :goto_2
    iget p1, p0, Lu6/i;->I:I

    .line 138
    .line 139
    sub-int/2addr p1, v4

    .line 140
    iput p1, p0, Lu6/i;->I:I

    .line 141
    .line 142
    return-object v2
.end method

.method public final clear()V
    .locals 2

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lu6/i;->G:I

    .line 13
    .line 14
    invoke-virtual {p0}, Lu6/i;->b()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v0

    .line 19
    invoke-virtual {p0, v1}, Lu6/i;->q(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget v1, p0, Lu6/i;->G:I

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Lu6/i;->p(II)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lu6/i;->G:I

    .line 30
    .line 31
    iput v0, p0, Lu6/i;->I:I

    .line 32
    .line 33
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lu6/i;->indexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lu6/i;->I:I

    .line 2
    .line 3
    invoke-static {p1, v0}, LZ5/m;->a(II)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 7
    .line 8
    iget v1, p0, Lu6/i;->G:I

    .line 9
    .line 10
    add-int/2addr v1, p1

    .line 11
    invoke-virtual {p0, v1}, Lu6/i;->q(I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    aget-object p1, v0, p1

    .line 16
    .line 17
    return-object p1
.end method

.method public final i(ILjava/util/Collection;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 6
    .line 7
    array-length v1, v1

    .line 8
    :goto_0
    if-ge p1, v1, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v2, p1

    .line 23
    .line 24
    add-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget p1, p0, Lu6/i;->G:I

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_1
    if-ge v1, p1, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_1

    .line 37
    .line 38
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    aput-object v3, v2, v1

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0}, Lu6/i;->b()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    add-int/2addr p2, p1

    .line 58
    iput p2, p0, Lu6/i;->I:I

    .line 59
    .line 60
    return-void
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lu6/i;->G:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lu6/i;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/2addr v1, v0

    .line 8
    invoke-virtual {p0, v1}, Lu6/i;->q(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lu6/i;->G:I

    .line 13
    .line 14
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    :goto_0
    if-ge v1, v0, :cond_5

    .line 17
    .line 18
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 19
    .line 20
    aget-object v2, v2, v1

    .line 21
    .line 22
    invoke-static {p1, v2}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    iget p1, p0, Lu6/i;->G:I

    .line 29
    .line 30
    :goto_1
    sub-int/2addr v1, p1

    .line 31
    return v1

    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    if-lt v1, v0, :cond_5

    .line 36
    .line 37
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 38
    .line 39
    array-length v2, v2

    .line 40
    :goto_2
    if-ge v1, v2, :cond_3

    .line 41
    .line 42
    iget-object v3, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 43
    .line 44
    aget-object v3, v3, v1

    .line 45
    .line 46
    invoke-static {p1, v3}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    iget p1, p0, Lu6/i;->G:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    const/4 v1, 0x0

    .line 59
    :goto_3
    if-ge v1, v0, :cond_5

    .line 60
    .line 61
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 62
    .line 63
    aget-object v2, v2, v1

    .line 64
    .line 65
    invoke-static {p1, v2}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 72
    .line 73
    array-length p1, p1

    .line 74
    add-int/2addr v1, p1

    .line 75
    iget p1, p0, Lu6/i;->G:I

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_5
    const/4 p1, -0x1

    .line 82
    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu6/i;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final l(I)V
    .locals 4

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-gt p1, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v1, Lu6/i;->J:[Ljava/lang/Object;

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    .line 17
    const/16 p1, 0xa

    .line 18
    .line 19
    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    .line 20
    .line 21
    iput-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    array-length v0, v0

    .line 25
    invoke-static {v0, p1}, LZ5/m;->d(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-array p1, p1, [Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 32
    .line 33
    iget v1, p0, Lu6/i;->G:I

    .line 34
    .line 35
    array-length v2, v0

    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v0, v3, p1, v1, v2}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 41
    .line 42
    array-length v1, v0

    .line 43
    iget v2, p0, Lu6/i;->G:I

    .line 44
    .line 45
    sub-int/2addr v1, v2

    .line 46
    invoke-static {v0, v1, p1, v3, v2}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    iput v3, p0, Lu6/i;->G:I

    .line 50
    .line 51
    iput-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 52
    .line 53
    return-void

    .line 54
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "Deque is too big."

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lu6/i;->G:I

    .line 2
    .line 3
    iget v1, p0, Lu6/i;->I:I

    .line 4
    .line 5
    add-int/2addr v1, v0

    .line 6
    invoke-virtual {p0, v1}, Lu6/i;->q(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget v1, p0, Lu6/i;->G:I

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    if-ge v1, v0, :cond_1

    .line 14
    .line 15
    add-int/lit8 v0, v0, -0x1

    .line 16
    .line 17
    if-gt v1, v0, :cond_5

    .line 18
    .line 19
    :goto_0
    iget-object v3, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 20
    .line 21
    aget-object v3, v3, v0

    .line 22
    .line 23
    invoke-static {p1, v3}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    iget p1, p0, Lu6/i;->G:I

    .line 30
    .line 31
    :goto_1
    sub-int/2addr v0, p1

    .line 32
    return v0

    .line 33
    :cond_0
    if-eq v0, v1, :cond_5

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    if-le v1, v0, :cond_5

    .line 39
    .line 40
    add-int/lit8 v0, v0, -0x1

    .line 41
    .line 42
    :goto_2
    if-ge v2, v0, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 45
    .line 46
    aget-object v1, v1, v0

    .line 47
    .line 48
    invoke-static {p1, v1}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 55
    .line 56
    array-length p1, p1

    .line 57
    add-int/2addr v0, p1

    .line 58
    iget p1, p0, Lu6/i;->G:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 65
    .line 66
    const-string v1, "<this>"

    .line 67
    .line 68
    invoke-static {v0, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    array-length v0, v0

    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 73
    .line 74
    iget v1, p0, Lu6/i;->G:I

    .line 75
    .line 76
    if-gt v1, v0, :cond_5

    .line 77
    .line 78
    :goto_3
    iget-object v3, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 79
    .line 80
    aget-object v3, v3, v0

    .line 81
    .line 82
    invoke-static {p1, v3}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_4

    .line 87
    .line 88
    iget p1, p0, Lu6/i;->G:I

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    if-eq v0, v1, :cond_5

    .line 92
    .line 93
    add-int/lit8 v0, v0, -0x1

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    return v2
.end method

.method public final n(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 2
    .line 3
    const-string v1, "<this>"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    array-length v0, v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 16
    .line 17
    :goto_0
    return p1
.end method

.method public final o(I)I
    .locals 1

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    add-int/2addr p1, v0

    .line 7
    :cond_0
    return p1
.end method

.method public final p(II)V
    .locals 2

    .line 1
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Lu6/j;->P([Ljava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 10
    .line 11
    array-length v1, v0

    .line 12
    invoke-static {v0, p1, v1}, Lu6/j;->P([Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-static {p1, v0, p2}, Lu6/j;->P([Ljava/lang/Object;II)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public final q(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    array-length v0, v0

    .line 7
    sub-int/2addr p1, v0

    .line 8
    :cond_0
    return p1
.end method

.method public final r()V
    .locals 1

    .line 1
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 6
    .line 7
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lu6/i;->indexOf(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lu6/i;->c(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 10

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lu6/i;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_8

    .line 12
    .line 13
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lu6/i;->G:I

    .line 21
    .line 22
    iget v2, p0, Lu6/i;->I:I

    .line 23
    .line 24
    add-int/2addr v2, v0

    .line 25
    invoke-virtual {p0, v2}, Lu6/i;->q(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, Lu6/i;->G:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-ge v2, v0, :cond_3

    .line 33
    .line 34
    move v4, v2

    .line 35
    :goto_0
    if-ge v2, v0, :cond_2

    .line 36
    .line 37
    iget-object v5, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 38
    .line 39
    aget-object v5, v5, v2

    .line 40
    .line 41
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    xor-int/2addr v6, v3

    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    iget-object v6, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 49
    .line 50
    add-int/lit8 v7, v4, 0x1

    .line 51
    .line 52
    aput-object v5, v6, v4

    .line 53
    .line 54
    move v4, v7

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const/4 v1, 0x1

    .line 57
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 61
    .line 62
    invoke-static {p1, v4, v0}, Lu6/j;->P([Ljava/lang/Object;II)V

    .line 63
    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_3
    iget-object v4, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 67
    .line 68
    array-length v4, v4

    .line 69
    move v5, v2

    .line 70
    const/4 v6, 0x0

    .line 71
    :goto_2
    const/4 v7, 0x0

    .line 72
    if-ge v2, v4, :cond_5

    .line 73
    .line 74
    iget-object v8, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 75
    .line 76
    aget-object v9, v8, v2

    .line 77
    .line 78
    aput-object v7, v8, v2

    .line 79
    .line 80
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    xor-int/2addr v7, v3

    .line 85
    if-eqz v7, :cond_4

    .line 86
    .line 87
    iget-object v7, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 88
    .line 89
    add-int/lit8 v8, v5, 0x1

    .line 90
    .line 91
    aput-object v9, v7, v5

    .line 92
    .line 93
    move v5, v8

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    const/4 v6, 0x1

    .line 96
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    invoke-virtual {p0, v5}, Lu6/i;->q(I)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    move v4, v2

    .line 104
    :goto_4
    if-ge v1, v0, :cond_7

    .line 105
    .line 106
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 107
    .line 108
    aget-object v5, v2, v1

    .line 109
    .line 110
    aput-object v7, v2, v1

    .line 111
    .line 112
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    xor-int/2addr v2, v3

    .line 117
    if-eqz v2, :cond_6

    .line 118
    .line 119
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 120
    .line 121
    aput-object v5, v2, v4

    .line 122
    .line 123
    invoke-virtual {p0, v4}, Lu6/i;->n(I)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    goto :goto_5

    .line 128
    :cond_6
    const/4 v6, 0x1

    .line 129
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_7
    move v1, v6

    .line 133
    :goto_6
    if-eqz v1, :cond_8

    .line 134
    .line 135
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 136
    .line 137
    .line 138
    iget p1, p0, Lu6/i;->G:I

    .line 139
    .line 140
    sub-int/2addr v4, p1

    .line 141
    invoke-virtual {p0, v4}, Lu6/i;->o(I)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    iput p1, p0, Lu6/i;->I:I

    .line 146
    .line 147
    :cond_8
    :goto_7
    return v1
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lu6/i;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 11
    .line 12
    iget v1, p0, Lu6/i;->G:I

    .line 13
    .line 14
    aget-object v2, v0, v1

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v3, v0, v1

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lu6/i;->n(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lu6/i;->G:I

    .line 24
    .line 25
    invoke-virtual {p0}, Lu6/i;->b()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/lit8 v0, v0, -0x1

    .line 30
    .line 31
    iput v0, p0, Lu6/i;->I:I

    .line 32
    .line 33
    return-object v2

    .line 34
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 35
    .line 36
    const-string v1, "ArrayDeque is empty."

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lu6/i;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lu6/i;->G:I

    .line 11
    .line 12
    invoke-static {p0}, Ld2/v;->m(Ljava/util/List;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v1, v0

    .line 17
    invoke-virtual {p0, v1}, Lu6/i;->q(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 22
    .line 23
    aget-object v2, v1, v0

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v3, v1, v0

    .line 27
    .line 28
    invoke-virtual {p0}, Lu6/i;->b()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    iput v0, p0, Lu6/i;->I:I

    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 38
    .line 39
    const-string v1, "ArrayDeque is empty."

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final removeRange(II)V
    .locals 7

    .line 1
    iget v0, p0, Lu6/i;->I:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, LZ5/m;->c(III)V

    .line 4
    .line 5
    .line 6
    sub-int v0, p2, p1

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v1, p0, Lu6/i;->I:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lu6/i;->clear()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const/4 v1, 0x1

    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lu6/i;->c(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_2
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lu6/i;->I:I

    .line 30
    .line 31
    sub-int/2addr v2, p2

    .line 32
    if-ge p1, v2, :cond_4

    .line 33
    .line 34
    iget v2, p0, Lu6/i;->G:I

    .line 35
    .line 36
    add-int/lit8 v3, p1, -0x1

    .line 37
    .line 38
    add-int/2addr v3, v2

    .line 39
    invoke-virtual {p0, v3}, Lu6/i;->q(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget v3, p0, Lu6/i;->G:I

    .line 44
    .line 45
    sub-int/2addr p2, v1

    .line 46
    add-int/2addr p2, v3

    .line 47
    invoke-virtual {p0, p2}, Lu6/i;->q(I)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    :goto_0
    if-lez p1, :cond_3

    .line 52
    .line 53
    add-int/lit8 v1, v2, 0x1

    .line 54
    .line 55
    add-int/lit8 v3, p2, 0x1

    .line 56
    .line 57
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    iget-object v4, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 66
    .line 67
    sub-int/2addr p2, v3

    .line 68
    add-int/lit8 v5, p2, 0x1

    .line 69
    .line 70
    sub-int/2addr v2, v3

    .line 71
    add-int/lit8 v6, v2, 0x1

    .line 72
    .line 73
    invoke-static {v4, v5, v4, v6, v1}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v2}, Lu6/i;->o(I)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {p0, p2}, Lu6/i;->o(I)I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    sub-int/2addr p1, v3

    .line 85
    goto :goto_0

    .line 86
    :cond_3
    iget p1, p0, Lu6/i;->G:I

    .line 87
    .line 88
    add-int/2addr p1, v0

    .line 89
    invoke-virtual {p0, p1}, Lu6/i;->q(I)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iget p2, p0, Lu6/i;->G:I

    .line 94
    .line 95
    invoke-virtual {p0, p2, p1}, Lu6/i;->p(II)V

    .line 96
    .line 97
    .line 98
    iput p1, p0, Lu6/i;->G:I

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    iget v1, p0, Lu6/i;->G:I

    .line 102
    .line 103
    add-int/2addr v1, p2

    .line 104
    invoke-virtual {p0, v1}, Lu6/i;->q(I)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    iget v2, p0, Lu6/i;->G:I

    .line 109
    .line 110
    add-int/2addr v2, p1

    .line 111
    invoke-virtual {p0, v2}, Lu6/i;->q(I)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    iget v2, p0, Lu6/i;->I:I

    .line 116
    .line 117
    :goto_1
    sub-int/2addr v2, p2

    .line 118
    if-lez v2, :cond_5

    .line 119
    .line 120
    iget-object p2, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 121
    .line 122
    array-length v3, p2

    .line 123
    sub-int/2addr v3, v1

    .line 124
    array-length p2, p2

    .line 125
    sub-int/2addr p2, p1

    .line 126
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    iget-object v3, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 135
    .line 136
    add-int v4, v1, p2

    .line 137
    .line 138
    invoke-static {v3, p1, v3, v1, v4}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v4}, Lu6/i;->q(I)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    add-int/2addr p1, p2

    .line 146
    invoke-virtual {p0, p1}, Lu6/i;->q(I)I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    goto :goto_1

    .line 151
    :cond_5
    iget p1, p0, Lu6/i;->G:I

    .line 152
    .line 153
    iget p2, p0, Lu6/i;->I:I

    .line 154
    .line 155
    add-int/2addr p2, p1

    .line 156
    invoke-virtual {p0, p2}, Lu6/i;->q(I)I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    sub-int p2, p1, v0

    .line 161
    .line 162
    invoke-virtual {p0, p2}, Lu6/i;->o(I)I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    invoke-virtual {p0, p2, p1}, Lu6/i;->p(II)V

    .line 167
    .line 168
    .line 169
    :goto_2
    iget p1, p0, Lu6/i;->I:I

    .line 170
    .line 171
    sub-int/2addr p1, v0

    .line 172
    iput p1, p0, Lu6/i;->I:I

    .line 173
    .line 174
    return-void
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 10

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lu6/i;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_8

    .line 12
    .line 13
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 14
    .line 15
    array-length v0, v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_7

    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lu6/i;->G:I

    .line 21
    .line 22
    iget v2, p0, Lu6/i;->I:I

    .line 23
    .line 24
    add-int/2addr v2, v0

    .line 25
    invoke-virtual {p0, v2}, Lu6/i;->q(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, Lu6/i;->G:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    if-ge v2, v0, :cond_3

    .line 33
    .line 34
    move v4, v2

    .line 35
    :goto_0
    if-ge v2, v0, :cond_2

    .line 36
    .line 37
    iget-object v5, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 38
    .line 39
    aget-object v5, v5, v2

    .line 40
    .line 41
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    iget-object v6, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 48
    .line 49
    add-int/lit8 v7, v4, 0x1

    .line 50
    .line 51
    aput-object v5, v6, v4

    .line 52
    .line 53
    move v4, v7

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v1, 0x1

    .line 56
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object p1, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {p1, v4, v0}, Lu6/j;->P([Ljava/lang/Object;II)V

    .line 62
    .line 63
    .line 64
    goto :goto_6

    .line 65
    :cond_3
    iget-object v4, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 66
    .line 67
    array-length v4, v4

    .line 68
    move v5, v2

    .line 69
    const/4 v6, 0x0

    .line 70
    :goto_2
    const/4 v7, 0x0

    .line 71
    if-ge v2, v4, :cond_5

    .line 72
    .line 73
    iget-object v8, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 74
    .line 75
    aget-object v9, v8, v2

    .line 76
    .line 77
    aput-object v7, v8, v2

    .line 78
    .line 79
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    if-eqz v7, :cond_4

    .line 84
    .line 85
    iget-object v7, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 86
    .line 87
    add-int/lit8 v8, v5, 0x1

    .line 88
    .line 89
    aput-object v9, v7, v5

    .line 90
    .line 91
    move v5, v8

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const/4 v6, 0x1

    .line 94
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {p0, v5}, Lu6/i;->q(I)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    move v4, v2

    .line 102
    :goto_4
    if-ge v1, v0, :cond_7

    .line 103
    .line 104
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 105
    .line 106
    aget-object v5, v2, v1

    .line 107
    .line 108
    aput-object v7, v2, v1

    .line 109
    .line 110
    invoke-interface {p1, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_6

    .line 115
    .line 116
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 117
    .line 118
    aput-object v5, v2, v4

    .line 119
    .line 120
    invoke-virtual {p0, v4}, Lu6/i;->n(I)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    goto :goto_5

    .line 125
    :cond_6
    const/4 v6, 0x1

    .line 126
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_7
    move v1, v6

    .line 130
    :goto_6
    if-eqz v1, :cond_8

    .line 131
    .line 132
    invoke-virtual {p0}, Lu6/i;->r()V

    .line 133
    .line 134
    .line 135
    iget p1, p0, Lu6/i;->G:I

    .line 136
    .line 137
    sub-int/2addr v4, p1

    .line 138
    invoke-virtual {p0, v4}, Lu6/i;->o(I)I

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    iput p1, p0, Lu6/i;->I:I

    .line 143
    .line 144
    :cond_8
    :goto_7
    return v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lu6/i;->I:I

    .line 2
    .line 3
    invoke-static {p1, v0}, LZ5/m;->a(II)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lu6/i;->G:I

    .line 7
    .line 8
    add-int/2addr v0, p1

    .line 9
    invoke-virtual {p0, v0}, Lu6/i;->q(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object v0, p0, Lu6/i;->H:[Ljava/lang/Object;

    .line 14
    .line 15
    aget-object v1, v0, p1

    .line 16
    .line 17
    aput-object p2, v0, p1

    .line 18
    .line 19
    return-object v1
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lu6/i;->b()I

    move-result v0

    .line 17
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lu6/i;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 1
    const-string v0, "array"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p1

    .line 3
    iget v1, p0, Lu6/i;->I:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>"

    invoke-static {p1, v0}, Lz4/q0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    .line 5
    :goto_0
    iget v0, p0, Lu6/i;->G:I

    .line 6
    iget v1, p0, Lu6/i;->I:I

    add-int/2addr v1, v0

    .line 7
    invoke-virtual {p0, v1}, Lu6/i;->q(I)I

    move-result v0

    .line 8
    iget v1, p0, Lu6/i;->G:I

    if-ge v1, v0, :cond_1

    .line 9
    iget-object v2, p0, Lu6/i;->H:[Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v2, p1, v1, v0, v3}, Lu6/j;->N([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Lu6/i;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lu6/i;->H:[Ljava/lang/Object;

    iget v2, p0, Lu6/i;->G:I

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, p1, v2, v3}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 12
    iget-object v1, p0, Lu6/i;->H:[Ljava/lang/Object;

    array-length v2, v1

    iget v3, p0, Lu6/i;->G:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2, p1, v4, v0}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 13
    :cond_2
    :goto_1
    iget v0, p0, Lu6/i;->I:I

    .line 14
    array-length v1, p1

    if-ge v0, v1, :cond_3

    const/4 v1, 0x0

    .line 15
    aput-object v1, p1, v0

    :cond_3
    return-object p1
.end method
