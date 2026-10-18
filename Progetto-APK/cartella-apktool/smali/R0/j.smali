.class public final LR0/j;
.super Lm0/j0;
.source "SourceFile"


# instance fields
.field public final F:Z

.field public final G:Z

.field public final H:Z

.field public final I:Z

.field public final J:Z

.field public final K:Z

.field public final L:Z

.field public final M:Z

.field public final N:Z

.field public final O:Z

.field public final P:Z

.field public final Q:Z

.field public final R:Z

.field public final S:Z

.field public final T:Z

.field public final U:Landroid/util/SparseArray;

.field public final V:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm0/j0;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, LR0/j;->U:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, LR0/j;->V:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LR0/j;->F:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, LR0/j;->G:Z

    .line 6
    iput-boolean v0, p0, LR0/j;->H:Z

    .line 7
    iput-boolean v1, p0, LR0/j;->I:Z

    .line 8
    iput-boolean v0, p0, LR0/j;->J:Z

    .line 9
    iput-boolean v1, p0, LR0/j;->K:Z

    .line 10
    iput-boolean v1, p0, LR0/j;->L:Z

    .line 11
    iput-boolean v1, p0, LR0/j;->M:Z

    .line 12
    iput-boolean v1, p0, LR0/j;->N:Z

    .line 13
    iput-boolean v0, p0, LR0/j;->O:Z

    .line 14
    iput-boolean v0, p0, LR0/j;->P:Z

    .line 15
    iput-boolean v0, p0, LR0/j;->Q:Z

    .line 16
    iput-boolean v1, p0, LR0/j;->R:Z

    .line 17
    iput-boolean v0, p0, LR0/j;->S:Z

    .line 18
    iput-boolean v1, p0, LR0/j;->T:Z

    return-void
.end method

.method public constructor <init>(LR0/k;)V
    .locals 5

    .line 19
    invoke-direct {p0, p1}, Lm0/j0;-><init>(Lm0/k0;)V

    .line 20
    iget-boolean v0, p1, LR0/k;->F:Z

    iput-boolean v0, p0, LR0/j;->F:Z

    .line 21
    iget-boolean v0, p1, LR0/k;->G:Z

    iput-boolean v0, p0, LR0/j;->G:Z

    .line 22
    iget-boolean v0, p1, LR0/k;->H:Z

    iput-boolean v0, p0, LR0/j;->H:Z

    .line 23
    iget-boolean v0, p1, LR0/k;->I:Z

    iput-boolean v0, p0, LR0/j;->I:Z

    .line 24
    iget-boolean v0, p1, LR0/k;->J:Z

    iput-boolean v0, p0, LR0/j;->J:Z

    .line 25
    iget-boolean v0, p1, LR0/k;->K:Z

    iput-boolean v0, p0, LR0/j;->K:Z

    .line 26
    iget-boolean v0, p1, LR0/k;->L:Z

    iput-boolean v0, p0, LR0/j;->L:Z

    .line 27
    iget-boolean v0, p1, LR0/k;->M:Z

    iput-boolean v0, p0, LR0/j;->M:Z

    .line 28
    iget-boolean v0, p1, LR0/k;->N:Z

    iput-boolean v0, p0, LR0/j;->N:Z

    .line 29
    iget-boolean v0, p1, LR0/k;->O:Z

    iput-boolean v0, p0, LR0/j;->O:Z

    .line 30
    iget-boolean v0, p1, LR0/k;->P:Z

    iput-boolean v0, p0, LR0/j;->P:Z

    .line 31
    iget-boolean v0, p1, LR0/k;->Q:Z

    iput-boolean v0, p0, LR0/j;->Q:Z

    .line 32
    iget-boolean v0, p1, LR0/k;->R:Z

    iput-boolean v0, p0, LR0/j;->R:Z

    .line 33
    iget-boolean v0, p1, LR0/k;->S:Z

    iput-boolean v0, p0, LR0/j;->S:Z

    .line 34
    iget-boolean v0, p1, LR0/k;->T:Z

    iput-boolean v0, p0, LR0/j;->T:Z

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 36
    :goto_0
    iget-object v2, p1, LR0/k;->U:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 37
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_0
    iput-object v0, p0, LR0/j;->U:Landroid/util/SparseArray;

    .line 39
    iget-object p1, p1, LR0/k;->V:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, LR0/j;->V:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final a(Lm0/h0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lm0/j0;->a(Lm0/h0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final b()Lm0/k0;
    .locals 1

    .line 1
    new-instance v0, LR0/k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, LR0/k;-><init>(LR0/j;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final c(I)Lm0/j0;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lm0/j0;->c(I)Lm0/j0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final e()Lm0/j0;
    .locals 1

    .line 1
    const/4 v0, -0x3

    .line 2
    iput v0, p0, Lm0/j0;->y:I

    .line 3
    .line 4
    return-object p0
.end method

.method public final f(Lm0/h0;)Lm0/j0;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lm0/j0;->f(Lm0/h0;)Lm0/j0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final g()Lm0/j0;
    .locals 0

    .line 1
    invoke-super {p0}, Lm0/j0;->g()Lm0/j0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final h([Ljava/lang/String;)Lm0/j0;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lm0/j0;->h([Ljava/lang/String;)Lm0/j0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final i()Lm0/j0;
    .locals 0

    .line 1
    invoke-super {p0}, Lm0/j0;->i()Lm0/j0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final j(IZ)Lm0/j0;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lm0/j0;->j(IZ)Lm0/j0;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final k(Lz4/L;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/j0;->E:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lm0/j0;->E:Ljava/util/HashSet;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
