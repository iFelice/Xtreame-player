.class public final Lv6/b;
.super Lu6/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# instance fields
.field public G:[Ljava/lang/Object;

.field public final H:I

.field public I:I

.field public final J:Lv6/b;

.field public final K:Lv6/c;


# direct methods
.method public constructor <init>([Ljava/lang/Object;IILv6/b;Lv6/c;)V
    .locals 1

    .line 1
    const-string v0, "backing"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "root"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lu6/f;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lv6/b;->G:[Ljava/lang/Object;

    .line 15
    .line 16
    iput p2, p0, Lv6/b;->H:I

    .line 17
    .line 18
    iput p3, p0, Lv6/b;->I:I

    .line 19
    .line 20
    iput-object p4, p0, Lv6/b;->J:Lv6/b;

    .line 21
    .line 22
    iput-object p5, p0, Lv6/b;->K:Lv6/c;

    .line 23
    .line 24
    invoke-static {p5}, Lv6/c;->i(Lv6/c;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic i(Lv6/b;)I
    .locals 0

    .line 1
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Lv6/b;->p()V

    .line 5
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 6
    iget v0, p0, Lv6/b;->I:I

    invoke-static {p1, v0}, LZ5/m;->b(II)V

    .line 7
    iget v0, p0, Lv6/b;->H:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lv6/b;->n(ILjava/lang/Object;)V

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv6/b;->p()V

    .line 2
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 3
    iget v0, p0, Lv6/b;->H:I

    iget v1, p0, Lv6/b;->I:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lv6/b;->n(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    .line 1
    const-string v0, "elements"

    invoke-static {p2, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lv6/b;->p()V

    .line 3
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 4
    iget v0, p0, Lv6/b;->I:I

    invoke-static {p1, v0}, LZ5/m;->b(II)V

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 6
    iget v1, p0, Lv6/b;->H:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2, v0}, Lv6/b;->l(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 3

    .line 7
    const-string v0, "elements"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lv6/b;->p()V

    .line 9
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 10
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 11
    iget v1, p0, Lv6/b;->H:I

    iget v2, p0, Lv6/b;->I:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lv6/b;->l(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lv6/b;->I:I

    .line 5
    .line 6
    return v0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv6/b;->p()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lv6/b;->I:I

    .line 8
    .line 9
    invoke-static {p1, v0}, LZ5/m;->a(II)V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lv6/b;->H:I

    .line 13
    .line 14
    add-int/2addr v0, p1

    .line 15
    invoke-virtual {p0, v0}, Lv6/b;->q(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final clear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv6/b;->p()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lv6/b;->H:I

    .line 8
    .line 9
    iget v1, p0, Lv6/b;->I:I

    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Lv6/b;->r(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 2
    .line 3
    .line 4
    if-eq p1, p0, :cond_1

    .line 5
    .line 6
    instance-of v0, p1, Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Ljava/util/List;

    .line 11
    .line 12
    iget-object v0, p0, Lv6/b;->G:[Ljava/lang/Object;

    .line 13
    .line 14
    iget v1, p0, Lv6/b;->H:I

    .line 15
    .line 16
    iget v2, p0, Lv6/b;->I:I

    .line 17
    .line 18
    invoke-static {v0, v1, v2, p1}, Lz4/q0;->a([Ljava/lang/Object;IILjava/util/List;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 28
    :goto_1
    return p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lv6/b;->I:I

    .line 5
    .line 6
    invoke-static {p1, v0}, LZ5/m;->a(II)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lv6/b;->G:[Ljava/lang/Object;

    .line 10
    .line 11
    iget v1, p0, Lv6/b;->H:I

    .line 12
    .line 13
    add-int/2addr v1, p1

    .line 14
    aget-object p1, v0, v1

    .line 15
    .line 16
    return-object p1
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv6/b;->G:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v1, p0, Lv6/b;->I:I

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v4, v1, :cond_1

    .line 12
    .line 13
    iget v5, p0, Lv6/b;->H:I

    .line 14
    .line 15
    add-int/2addr v5, v4

    .line 16
    aget-object v5, v0, v5

    .line 17
    .line 18
    mul-int/lit8 v2, v2, 0x1f

    .line 19
    .line 20
    if-eqz v5, :cond_0

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const/4 v5, 0x0

    .line 28
    :goto_1
    add-int/2addr v2, v5

    .line 29
    add-int/lit8 v4, v4, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v2
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lv6/b;->I:I

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lv6/b;->G:[Ljava/lang/Object;

    .line 10
    .line 11
    iget v2, p0, Lv6/b;->H:I

    .line 12
    .line 13
    add-int/2addr v2, v0

    .line 14
    aget-object v1, v1, v2

    .line 15
    .line 16
    invoke-static {v1, p1}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    return v0

    .line 23
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 p1, -0x1

    .line 27
    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lv6/b;->I:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lv6/b;->listIterator(I)Ljava/util/ListIterator;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final l(ILjava/util/Collection;I)V
    .locals 2

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
    iget-object v0, p0, Lv6/b;->K:Lv6/c;

    .line 8
    .line 9
    iget-object v1, p0, Lv6/b;->J:Lv6/b;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, p1, p2, p3}, Lv6/b;->l(ILjava/util/Collection;I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v1, Lv6/c;->J:Lv6/c;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2, p3}, Lv6/c;->l(ILjava/util/Collection;I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p1, v0, Lv6/c;->G:[Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p1, p0, Lv6/b;->G:[Ljava/lang/Object;

    .line 25
    .line 26
    iget p1, p0, Lv6/b;->I:I

    .line 27
    .line 28
    add-int/2addr p1, p3

    .line 29
    iput p1, p0, Lv6/b;->I:I

    .line 30
    .line 31
    return-void
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lv6/b;->I:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    :goto_0
    if-ltz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lv6/b;->G:[Ljava/lang/Object;

    .line 11
    .line 12
    iget v2, p0, Lv6/b;->H:I

    .line 13
    .line 14
    add-int/2addr v2, v0

    .line 15
    aget-object v1, v1, v2

    .line 16
    .line 17
    invoke-static {v1, p1}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return v0

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, -0x1

    .line 28
    return p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lv6/b;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 4
    iget v0, p0, Lv6/b;->I:I

    invoke-static {p1, v0}, LZ5/m;->b(II)V

    .line 5
    new-instance v0, Lv6/a;

    invoke-direct {v0, p0, p1}, Lv6/a;-><init>(Lv6/b;I)V

    return-object v0
.end method

.method public final n(ILjava/lang/Object;)V
    .locals 2

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
    iget-object v0, p0, Lv6/b;->K:Lv6/c;

    .line 8
    .line 9
    iget-object v1, p0, Lv6/b;->J:Lv6/b;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1, p1, p2}, Lv6/b;->n(ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v1, Lv6/c;->J:Lv6/c;

    .line 18
    .line 19
    invoke-virtual {v0, p1, p2}, Lv6/c;->n(ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p1, v0, Lv6/c;->G:[Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p1, p0, Lv6/b;->G:[Ljava/lang/Object;

    .line 25
    .line 26
    iget p1, p0, Lv6/b;->I:I

    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    iput p1, p0, Lv6/b;->I:I

    .line 31
    .line 32
    return-void
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv6/b;->K:Lv6/c;

    .line 2
    .line 3
    invoke-static {v0}, Lv6/c;->i(Lv6/c;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public final p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lv6/b;->K:Lv6/c;

    .line 2
    .line 3
    iget-boolean v0, v0, Lv6/c;->I:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final q(I)Ljava/lang/Object;
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
    iget-object v0, p0, Lv6/b;->J:Lv6/b;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lv6/b;->q(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lv6/c;->J:Lv6/c;

    .line 17
    .line 18
    iget-object v0, p0, Lv6/b;->K:Lv6/c;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lv6/c;->q(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :goto_0
    iget v0, p0, Lv6/b;->I:I

    .line 25
    .line 26
    add-int/lit8 v0, v0, -0x1

    .line 27
    .line 28
    iput v0, p0, Lv6/b;->I:I

    .line 29
    .line 30
    return-object p1
.end method

.method public final r(II)V
    .locals 1

    .line 1
    if-lez p2, :cond_0

    .line 2
    .line 3
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lv6/b;->J:Lv6/b;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lv6/b;->r(II)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-object v0, Lv6/c;->J:Lv6/c;

    .line 18
    .line 19
    iget-object v0, p0, Lv6/b;->K:Lv6/c;

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lv6/c;->r(II)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget p1, p0, Lv6/b;->I:I

    .line 25
    .line 26
    sub-int/2addr p1, p2

    .line 27
    iput p1, p0, Lv6/b;->I:I

    .line 28
    .line 29
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lv6/b;->p()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lv6/b;->indexOf(Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-ltz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lv6/b;->c(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    if-ltz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lv6/b;->p()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lv6/b;->I:I

    .line 13
    .line 14
    iget v1, p0, Lv6/b;->H:I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, v1, v0, p1, v2}, Lv6/b;->s(IILjava/util/Collection;Z)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_0

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    :cond_0
    return v2
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    .line 1
    const-string v0, "elements"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lv6/b;->p()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 10
    .line 11
    .line 12
    iget v0, p0, Lv6/b;->I:I

    .line 13
    .line 14
    iget v1, p0, Lv6/b;->H:I

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {p0, v1, v0, p1, v2}, Lv6/b;->s(IILjava/util/Collection;Z)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-lez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    return v2
.end method

.method public final s(IILjava/util/Collection;Z)I
    .locals 1

    .line 1
    iget-object v0, p0, Lv6/b;->J:Lv6/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lv6/b;->s(IILjava/util/Collection;Z)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lv6/c;->J:Lv6/c;

    .line 11
    .line 12
    iget-object v0, p0, Lv6/b;->K:Lv6/c;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2, p3, p4}, Lv6/c;->s(IILjava/util/Collection;Z)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    :goto_0
    if-lez p1, :cond_1

    .line 19
    .line 20
    iget p2, p0, Ljava/util/AbstractList;->modCount:I

    .line 21
    .line 22
    add-int/lit8 p2, p2, 0x1

    .line 23
    .line 24
    iput p2, p0, Ljava/util/AbstractList;->modCount:I

    .line 25
    .line 26
    :cond_1
    iget p2, p0, Lv6/b;->I:I

    .line 27
    .line 28
    sub-int/2addr p2, p1

    .line 29
    iput p2, p0, Lv6/b;->I:I

    .line 30
    .line 31
    return p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lv6/b;->p()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 5
    .line 6
    .line 7
    iget v0, p0, Lv6/b;->I:I

    .line 8
    .line 9
    invoke-static {p1, v0}, LZ5/m;->a(II)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lv6/b;->G:[Ljava/lang/Object;

    .line 13
    .line 14
    iget v1, p0, Lv6/b;->H:I

    .line 15
    .line 16
    add-int/2addr v1, p1

    .line 17
    aget-object p1, v0, v1

    .line 18
    .line 19
    aput-object p2, v0, v1

    .line 20
    .line 21
    return-object p1
.end method

.method public final subList(II)Ljava/util/List;
    .locals 7

    .line 1
    iget v0, p0, Lv6/b;->I:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, LZ5/m;->c(III)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lv6/b;

    .line 7
    .line 8
    iget-object v2, p0, Lv6/b;->G:[Ljava/lang/Object;

    .line 9
    .line 10
    iget v1, p0, Lv6/b;->H:I

    .line 11
    .line 12
    add-int v3, v1, p1

    .line 13
    .line 14
    sub-int v4, p2, p1

    .line 15
    .line 16
    iget-object v6, p0, Lv6/b;->K:Lv6/c;

    .line 17
    .line 18
    move-object v1, v0

    .line 19
    move-object v5, p0

    .line 20
    invoke-direct/range {v1 .. v6}, Lv6/b;-><init>([Ljava/lang/Object;IILv6/b;Lv6/c;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 3

    .line 9
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 10
    iget-object v0, p0, Lv6/b;->G:[Ljava/lang/Object;

    iget v1, p0, Lv6/b;->I:I

    iget v2, p0, Lv6/b;->H:I

    add-int/2addr v1, v2

    invoke-static {v2, v1, v0}, Lu6/j;->O(II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "array"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 3
    array-length v0, p1

    iget v1, p0, Lv6/b;->I:I

    iget v2, p0, Lv6/b;->H:I

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lv6/b;->G:[Ljava/lang/Object;

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOfRange(...)"

    invoke-static {p1, v0}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lv6/b;->G:[Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/2addr v1, v2

    invoke-static {v0, v3, p1, v2, v1}, Lu6/j;->M([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    .line 6
    iget v0, p0, Lv6/b;->I:I

    .line 7
    array-length v1, p1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    .line 8
    aput-object v1, p1, v0

    :cond_1
    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lv6/b;->o()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv6/b;->G:[Ljava/lang/Object;

    .line 5
    .line 6
    iget v1, p0, Lv6/b;->H:I

    .line 7
    .line 8
    iget v2, p0, Lv6/b;->I:I

    .line 9
    .line 10
    invoke-static {v0, v1, v2, p0}, Lz4/q0;->b([Ljava/lang/Object;IILjava/util/Collection;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method
