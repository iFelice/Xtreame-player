.class public abstract Le0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ln/g;

.field public c:I

.field public d:Z

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:Z

.field public final j:La/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le0/t;->k:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Le0/t;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ln/g;

    .line 12
    .line 13
    invoke-direct {v0}, Ln/g;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Le0/t;->b:Ln/g;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Le0/t;->c:I

    .line 20
    .line 21
    sget-object v0, Le0/t;->k:Ljava/lang/Object;

    .line 22
    .line 23
    iput-object v0, p0, Le0/t;->f:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v1, La/f;

    .line 26
    .line 27
    const/16 v2, 0xb

    .line 28
    .line 29
    invoke-direct {v1, p0, v2}, La/f;-><init>(Ljava/lang/Object;I)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Le0/t;->j:La/f;

    .line 33
    .line 34
    iput-object v0, p0, Le0/t;->e:Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v0, -0x1

    .line 37
    iput v0, p0, Le0/t;->g:I

    .line 38
    .line 39
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lm/b;->g0()Lm/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lm/b;->c:Lm/e;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "Cannot invoke "

    .line 28
    .line 29
    const-string v2, " on a background thread"

    .line 30
    .line 31
    invoke-static {v1, p0, v2}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0
.end method


# virtual methods
.method public final b(Le0/s;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Le0/t;->h:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Le0/t;->i:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iput-boolean v1, p0, Le0/t;->h:Z

    .line 10
    .line 11
    :cond_1
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Le0/t;->i:Z

    .line 13
    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    iget-boolean v1, p1, Le0/s;->b:Z

    .line 17
    .line 18
    if-nez v1, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    iget v1, p1, Le0/s;->c:I

    .line 22
    .line 23
    iget v2, p0, Le0/t;->g:I

    .line 24
    .line 25
    if-lt v1, v2, :cond_3

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    iput v2, p1, Le0/s;->c:I

    .line 29
    .line 30
    iget-object p1, p1, Le0/s;->a:Le0/w;

    .line 31
    .line 32
    iget-object v1, p0, Le0/t;->e:Ljava/lang/Object;

    .line 33
    .line 34
    invoke-interface {p1, v1}, Le0/w;->onChanged(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    const/4 p1, 0x0

    .line 38
    goto :goto_2

    .line 39
    :cond_4
    iget-object v1, p0, Le0/t;->b:Ln/g;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    new-instance v2, Ln/d;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Ln/d;-><init>(Ln/g;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v1, Ln/g;->I:Ljava/util/WeakHashMap;

    .line 50
    .line 51
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_5
    invoke-virtual {v2}, Ln/d;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_8

    .line 61
    .line 62
    invoke-virtual {v2}, Ln/d;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Le0/s;

    .line 73
    .line 74
    iget-boolean v3, v1, Le0/s;->b:Z

    .line 75
    .line 76
    if-nez v3, :cond_6

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_6
    iget v3, v1, Le0/s;->c:I

    .line 80
    .line 81
    iget v4, p0, Le0/t;->g:I

    .line 82
    .line 83
    if-lt v3, v4, :cond_7

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_7
    iput v4, v1, Le0/s;->c:I

    .line 87
    .line 88
    iget-object v1, v1, Le0/s;->a:Le0/w;

    .line 89
    .line 90
    iget-object v3, p0, Le0/t;->e:Ljava/lang/Object;

    .line 91
    .line 92
    invoke-interface {v1, v3}, Le0/w;->onChanged(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    iget-boolean v1, p0, Le0/t;->i:Z

    .line 96
    .line 97
    if-eqz v1, :cond_5

    .line 98
    .line 99
    :cond_8
    :goto_2
    iget-boolean v1, p0, Le0/t;->i:Z

    .line 100
    .line 101
    if-nez v1, :cond_1

    .line 102
    .line 103
    iput-boolean v0, p0, Le0/t;->h:Z

    .line 104
    .line 105
    return-void
.end method

.method public abstract c(Ljava/lang/Object;)V
.end method
