.class public final LP1/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Class;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field public g:Ljava/util/concurrent/Executor;

.field public h:Ljava/util/concurrent/Executor;

.field public i:LT1/e;

.field public j:Z

.field public final k:I

.field public l:Z

.field public m:Z

.field public final n:J

.field public final o:Le0/u;

.field public final p:Ljava/util/LinkedHashSet;

.field public q:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP1/v;->a:Landroid/content/Context;

    .line 5
    .line 6
    const-class p1, Landroidx/work/impl/WorkDatabase;

    .line 7
    .line 8
    iput-object p1, p0, LP1/v;->b:Ljava/lang/Class;

    .line 9
    .line 10
    iput-object p2, p0, LP1/v;->c:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, LP1/v;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, LP1/v;->e:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, LP1/v;->f:Ljava/util/ArrayList;

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    iput p1, p0, LP1/v;->k:I

    .line 35
    .line 36
    iput-boolean p1, p0, LP1/v;->l:Z

    .line 37
    .line 38
    const-wide/16 p1, -0x1

    .line 39
    .line 40
    iput-wide p1, p0, LP1/v;->n:J

    .line 41
    .line 42
    new-instance p1, Le0/u;

    .line 43
    .line 44
    const/4 p2, 0x2

    .line 45
    invoke-direct {p1, p2}, Le0/u;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, LP1/v;->o:Le0/u;

    .line 49
    .line 50
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, LP1/v;->p:Ljava/util/LinkedHashSet;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final varargs a([LQ1/a;)V
    .locals 5

    .line 1
    iget-object v0, p0, LP1/v;->q:Ljava/util/HashSet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashSet;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LP1/v;->q:Ljava/util/HashSet;

    .line 11
    .line 12
    :cond_0
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-object v2, p1, v1

    .line 17
    .line 18
    iget-object v3, p0, LP1/v;->q:Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-static {v3}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget v4, v2, LQ1/a;->a:I

    .line 24
    .line 25
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, LP1/v;->q:Ljava/util/HashSet;

    .line 33
    .line 34
    invoke-static {v3}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget v2, v2, LQ1/a;->b:I

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    array-length v0, p1

    .line 50
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, [LQ1/a;

    .line 55
    .line 56
    iget-object v0, p0, LP1/v;->o:Le0/u;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Le0/u;->b([LQ1/a;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
