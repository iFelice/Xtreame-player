.class public final Lcom/google/android/gms/internal/ads/DN;
.super Lcom/google/android/gms/internal/ads/kN;
.source "SourceFile"


# static fields
.field public static final q:Lcom/google/android/gms/internal/ads/x6;


# instance fields
.field public final k:[Lcom/google/android/gms/internal/ads/eN;

.field public final l:[Lcom/google/android/gms/internal/ads/Ie;

.field public final m:Ljava/util/ArrayList;

.field public n:I

.field public o:[[J

.field public p:LI0/u;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    sget-object v7, Lcom/google/android/gms/internal/ads/J5;->a:Lcom/google/android/gms/internal/ads/J5;

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/x6;

    .line 11
    .line 12
    new-instance v3, Lcom/google/android/gms/internal/ads/F3;

    .line 13
    .line 14
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/h3;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v5, Lcom/google/android/gms/internal/ads/A4;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v6, Lcom/google/android/gms/internal/ads/i9;->y:Lcom/google/android/gms/internal/ads/i9;

    .line 23
    .line 24
    const-string v2, "MergingMediaSource"

    .line 25
    .line 26
    const/4 v4, 0x0

    .line 27
    move-object v1, v0

    .line 28
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/x6;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/F3;Lcom/google/android/gms/internal/ads/e5;Lcom/google/android/gms/internal/ads/A4;Lcom/google/android/gms/internal/ads/i9;Lcom/google/android/gms/internal/ads/J5;)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/google/android/gms/internal/ads/DN;->q:Lcom/google/android/gms/internal/ads/x6;

    .line 32
    .line 33
    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/GH;[Lcom/google/android/gms/internal/ads/eN;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kN;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/DN;->k:[Lcom/google/android/gms/internal/ads/eN;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DN;->m:Ljava/util/ArrayList;

    .line 16
    .line 17
    const/4 p1, -0x1

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/DN;->n:I

    .line 19
    .line 20
    array-length p1, p2

    .line 21
    new-array p1, p1, [Lcom/google/android/gms/internal/ads/Ie;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DN;->l:[Lcom/google/android/gms/internal/ads/Ie;

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    new-array p1, p1, [[J

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DN;->o:[[J

    .line 29
    .line 30
    new-instance p1, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance p1, Lcom/google/android/gms/internal/ads/jA;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/jA;-><init>()V

    .line 38
    .line 39
    .line 40
    new-instance p2, Lcom/google/android/gms/internal/ads/Jz;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lcom/google/android/gms/internal/ads/LA;

    .line 46
    .line 47
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/LA;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/Jz;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vN;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/CN;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DN;->k:[Lcom/google/android/gms/internal/ads/eN;

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    if-ge v0, v2, :cond_1

    .line 8
    .line 9
    aget-object v1, v1, v0

    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/CN;->G:[Lcom/google/android/gms/internal/ads/vN;

    .line 12
    .line 13
    aget-object v2, v2, v0

    .line 14
    .line 15
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/aO;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    check-cast v2, Lcom/google/android/gms/internal/ads/aO;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/aO;->G:Lcom/google/android/gms/internal/ads/vN;

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/eN;->a(Lcom/google/android/gms/internal/ads/vN;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/CO;J)Lcom/google/android/gms/internal/ads/vN;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DN;->k:[Lcom/google/android/gms/internal/ads/eN;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    new-array v2, v1, [Lcom/google/android/gms/internal/ads/vN;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/DN;->l:[Lcom/google/android/gms/internal/ads/Ie;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    aget-object v5, v3, v4

    .line 10
    .line 11
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/wN;->a:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/Ie;->a(Ljava/lang/Object;)I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    :goto_0
    if-ge v4, v1, :cond_0

    .line 18
    .line 19
    aget-object v6, v3, v4

    .line 20
    .line 21
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/Ie;->f(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/wN;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/wN;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    aget-object v7, v0, v4

    .line 30
    .line 31
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/DN;->o:[[J

    .line 32
    .line 33
    aget-object v8, v8, v5

    .line 34
    .line 35
    aget-wide v9, v8, v4

    .line 36
    .line 37
    sub-long v8, p3, v9

    .line 38
    .line 39
    invoke-virtual {v7, v6, p2, v8, v9}, Lcom/google/android/gms/internal/ads/eN;->b(Lcom/google/android/gms/internal/ads/wN;Lcom/google/android/gms/internal/ads/CO;J)Lcom/google/android/gms/internal/ads/vN;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    aput-object v6, v2, v4

    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/CN;

    .line 49
    .line 50
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/DN;->o:[[J

    .line 51
    .line 52
    aget-object p2, p2, v5

    .line 53
    .line 54
    invoke-direct {p1, p2, v2}, Lcom/google/android/gms/internal/ads/CN;-><init>([J[Lcom/google/android/gms/internal/ads/vN;)V

    .line 55
    .line 56
    .line 57
    return-object p1
.end method

.method public final c()Lcom/google/android/gms/internal/ads/x6;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DN;->k:[Lcom/google/android/gms/internal/ads/eN;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-lez v1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v0, v0, v1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eN;->c()Lcom/google/android/gms/internal/ads/x6;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/DN;->q:Lcom/google/android/gms/internal/ads/x6;

    .line 15
    .line 16
    :goto_0
    return-object v0
.end method

.method public final j(Lcom/google/android/gms/internal/ads/lJ;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kN;->j:Lcom/google/android/gms/internal/ads/lJ;

    .line 2
    .line 3
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lo3/r;->x(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kN;->i:Landroid/os/Handler;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DN;->k:[Lcom/google/android/gms/internal/ads/eN;

    .line 22
    .line 23
    array-length v1, v0

    .line 24
    if-ge p1, v1, :cond_0

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    aget-object v0, v0, p1

    .line 31
    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/kN;->t(Ljava/lang/Integer;Lcom/google/android/gms/internal/ads/eN;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 p1, p1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/kN;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DN;->l:[Lcom/google/android/gms/internal/ads/Ie;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/DN;->n:I

    .line 12
    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/DN;->p:LI0/u;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DN;->m:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DN;->k:[Lcom/google/android/gms/internal/ads/eN;

    .line 21
    .line 22
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/ads/x6;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DN;->k:[Lcom/google/android/gms/internal/ads/eN;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eN;->p(Lcom/google/android/gms/internal/ads/x6;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DN;->p:LI0/u;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kN;->h:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/android/gms/internal/ads/jN;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/jN;->a:Lcom/google/android/gms/internal/ads/eN;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/eN;->r()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    throw v0
.end method

.method public final s(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eN;Lcom/google/android/gms/internal/ads/Ie;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DN;->p:LI0/u;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/DN;->n:I

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/Ie;->b()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/DN;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/Ie;->b()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iget v1, p0, Lcom/google/android/gms/internal/ads/DN;->n:I

    .line 25
    .line 26
    if-eq v0, v1, :cond_2

    .line 27
    .line 28
    new-instance p1, LI0/u;

    .line 29
    .line 30
    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/DN;->p:LI0/u;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    move v0, v1

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/DN;->o:[[J

    .line 38
    .line 39
    array-length v1, v1

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/DN;->l:[Lcom/google/android/gms/internal/ads/Ie;

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    array-length v1, v2

    .line 45
    filled-new-array {v0, v1}, [I

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, [[J

    .line 56
    .line 57
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/DN;->o:[[J

    .line 58
    .line 59
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/DN;->m:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    aput-object p3, v2, p1

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    aget-object p1, v2, p1

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/eN;->k(Lcom/google/android/gms/internal/ads/Ie;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_1
    return-void
.end method

.method public final bridge synthetic w(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/wN;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-object p2

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method
