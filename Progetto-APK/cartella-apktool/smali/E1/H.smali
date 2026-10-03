.class public final LE1/H;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:LE1/A;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "MediaRouter"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LE1/H;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, LE1/H;->a:Landroid/content/Context;

    .line 12
    .line 13
    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "The media router service must only be accessed on the application\'s main thread."

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static c()LE1/A;
    .locals 1

    .line 1
    sget-object v0, LE1/H;->c:LE1/A;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, LE1/A;->d()V

    .line 8
    .line 9
    .line 10
    sget-object v0, LE1/H;->c:LE1/A;

    .line 11
    .line 12
    return-object v0
.end method

.method public static d(Landroid/content/Context;)LE1/H;
    .locals 4

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    invoke-static {}, LE1/H;->b()V

    .line 4
    .line 5
    .line 6
    sget-object v0, LE1/H;->c:LE1/A;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, LE1/A;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, LE1/A;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, LE1/H;->c:LE1/A;

    .line 20
    .line 21
    :cond_0
    sget-object v0, LE1/H;->c:LE1/A;

    .line 22
    .line 23
    iget-object v0, v0, LE1/A;->g:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :cond_1
    :goto_0
    add-int/lit8 v1, v1, -0x1

    .line 30
    .line 31
    if-ltz v1, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, LE1/H;

    .line 44
    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v3, v2, LE1/H;->a:Landroid/content/Context;

    .line 52
    .line 53
    if-ne v3, p0, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    new-instance v2, LE1/H;

    .line 57
    .line 58
    invoke-direct {v2, p0}, LE1/H;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    new-instance p0, Ljava/lang/ref/WeakReference;

    .line 62
    .line 63
    invoke-direct {p0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :goto_1
    return-object v2

    .line 70
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    const-string v0, "context must not be null"

    .line 73
    .line 74
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method


# virtual methods
.method public final a(LE1/p;LE1/q;I)V
    .locals 5

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    if-eqz p2, :cond_7

    .line 4
    .line 5
    invoke-static {}, LE1/H;->b()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, LE1/H;->b:Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    :goto_0
    if-ge v3, v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, LE1/r;

    .line 23
    .line 24
    iget-object v4, v4, LE1/r;->b:LE1/q;

    .line 25
    .line 26
    if-ne v4, p2, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v3, -0x1

    .line 33
    :goto_1
    if-gez v3, :cond_2

    .line 34
    .line 35
    new-instance v1, LE1/r;

    .line 36
    .line 37
    invoke-direct {v1, p0, p2}, LE1/r;-><init>(LE1/H;LE1/q;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    move-object v1, p2

    .line 49
    check-cast v1, LE1/r;

    .line 50
    .line 51
    :goto_2
    iget p2, v1, LE1/r;->d:I

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    if-eq p3, p2, :cond_3

    .line 55
    .line 56
    iput p3, v1, LE1/r;->d:I

    .line 57
    .line 58
    const/4 v2, 0x1

    .line 59
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    and-int/lit8 p2, p3, 0x1

    .line 64
    .line 65
    if-eqz p2, :cond_4

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move v0, v2

    .line 69
    :goto_3
    iput-wide v3, v1, LE1/r;->e:J

    .line 70
    .line 71
    iget-object p2, v1, LE1/r;->c:LE1/p;

    .line 72
    .line 73
    invoke-virtual {p2}, LE1/p;->a()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, LE1/p;->a()V

    .line 77
    .line 78
    .line 79
    iget-object p2, p2, LE1/p;->b:Ljava/util/List;

    .line 80
    .line 81
    iget-object p3, p1, LE1/p;->b:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {p2, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-nez p2, :cond_5

    .line 88
    .line 89
    new-instance p2, LE1/f0;

    .line 90
    .line 91
    iget-object p3, v1, LE1/r;->c:LE1/p;

    .line 92
    .line 93
    invoke-direct {p2, p3}, LE1/f0;-><init>(LE1/p;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, LE1/p;->b()Ljava/util/ArrayList;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p2, p1}, LE1/f0;->c(Ljava/util/ArrayList;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, LE1/f0;->d()LE1/p;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, v1, LE1/r;->c:LE1/p;

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_5
    if-eqz v0, :cond_6

    .line 111
    .line 112
    :goto_4
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, LE1/A;->m()V

    .line 117
    .line 118
    .line 119
    :cond_6
    return-void

    .line 120
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 121
    .line 122
    const-string p2, "callback must not be null"

    .line 123
    .line 124
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    const-string p2, "selector must not be null"

    .line 131
    .line 132
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1
.end method

.method public final e(LE1/q;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-static {}, LE1/H;->b()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LE1/H;->b:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    :goto_0
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, LE1/r;

    .line 20
    .line 21
    iget-object v3, v3, LE1/r;->b:LE1/q;

    .line 22
    .line 23
    if-ne v3, p1, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v2, -0x1

    .line 30
    :goto_1
    if-ltz v2, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, LE1/A;->m()V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void

    .line 43
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string v0, "callback must not be null"

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method
