.class public final LA0/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lm0/i;

.field public final c:LF/i;

.field public final d:LA0/h0;

.field public final e:LA0/H;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Landroid/util/SparseArray;

.field public final h:I

.field public final i:Z

.field public j:LA0/K;

.field public k:LA0/a0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lm0/i;LF/i;LA0/h0;Ljava/util/concurrent/Executor;LA0/n;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/N;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, LA0/N;->b:Lm0/i;

    .line 7
    .line 8
    iput-object p3, p0, LA0/N;->c:LF/i;

    .line 9
    .line 10
    iput-object p4, p0, LA0/N;->d:LA0/h0;

    .line 11
    .line 12
    iput-object p5, p0, LA0/N;->f:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    iput-object p6, p0, LA0/N;->e:LA0/H;

    .line 15
    .line 16
    new-instance p1, Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, LA0/N;->g:Landroid/util/SparseArray;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    iput p2, p0, LA0/N;->h:I

    .line 25
    .line 26
    iput-boolean p8, p0, LA0/N;->i:Z

    .line 27
    .line 28
    new-instance p2, LA0/M;

    .line 29
    .line 30
    new-instance p5, LA0/B;

    .line 31
    .line 32
    invoke-direct {p5, p3, p4, p7, p8}, LA0/B;-><init>(LF/i;LA0/h0;ZZ)V

    .line 33
    .line 34
    .line 35
    invoke-direct {p2, p5}, LA0/M;-><init>(LA0/a0;)V

    .line 36
    .line 37
    .line 38
    const/4 p5, 0x1

    .line 39
    invoke-virtual {p1, p5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    const/4 p5, 0x4

    .line 43
    invoke-virtual {p1, p5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance p2, LA0/M;

    .line 47
    .line 48
    new-instance p5, LA0/c;

    .line 49
    .line 50
    invoke-direct {p5, p3, p4, p9}, LA0/c;-><init>(LF/i;LA0/h0;Z)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p2, p5}, LA0/M;-><init>(LA0/a0;)V

    .line 54
    .line 55
    .line 56
    const/4 p5, 0x2

    .line 57
    invoke-virtual {p1, p5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    new-instance p2, LA0/M;

    .line 61
    .line 62
    new-instance p5, LA0/Z;

    .line 63
    .line 64
    invoke-direct {p5, p3, p4}, LA0/Z;-><init>(LF/i;LA0/h0;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p2, p5}, LA0/M;-><init>(LA0/a0;)V

    .line 68
    .line 69
    .line 70
    const/4 p3, 0x3

    .line 71
    invoke-virtual {p1, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, LA0/N;->g:Landroid/util/SparseArray;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-ge v0, v2, :cond_1

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, LA0/M;

    .line 19
    .line 20
    iget-boolean v2, v1, LA0/M;->d:Z

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    iput-boolean v2, v1, LA0/M;->d:Z

    .line 26
    .line 27
    iget-object v2, v1, LA0/M;->a:LA0/a0;

    .line 28
    .line 29
    invoke-virtual {v2}, LA0/a0;->f()V

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, LA0/M;->b:LA0/y;

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    check-cast v1, LA0/m;

    .line 37
    .line 38
    invoke-virtual {v1}, LA0/m;->release()V

    .line 39
    .line 40
    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method
