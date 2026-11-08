.class public final LI0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI0/t;


# instance fields
.field public final synthetic G:LI0/c;


# direct methods
.method public constructor <init>(LI0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI0/a;->G:LI0/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, LI0/a;->G:LI0/c;

    .line 2
    .line 3
    iget-object v0, v0, LI0/c;->K:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c(Landroid/net/Uri;LB0/w0;Z)Z
    .locals 9

    .line 1
    iget-object p3, p0, LI0/a;->G:LI0/c;

    .line 2
    .line 3
    iget-object v0, p3, LI0/c;->R:LI0/l;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-object v0, p3, LI0/c;->P:LI0/o;

    .line 13
    .line 14
    sget-object v4, Lp0/M;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v0, v0, LI0/o;->e:Ljava/util/List;

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    iget-object v7, p3, LI0/c;->J:Ljava/util/HashMap;

    .line 25
    .line 26
    if-ge v4, v6, :cond_1

    .line 27
    .line 28
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    check-cast v6, LI0/n;

    .line 33
    .line 34
    iget-object v6, v6, LI0/n;->a:Landroid/net/Uri;

    .line 35
    .line 36
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, LI0/b;

    .line 41
    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    iget-wide v6, v6, LI0/b;->N:J

    .line 45
    .line 46
    cmp-long v8, v2, v6

    .line 47
    .line 48
    if-gez v8, :cond_0

    .line 49
    .line 50
    add-int/lit8 v5, v5, 0x1

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lj0/c;

    .line 56
    .line 57
    iget-object v2, p3, LI0/c;->P:LI0/o;

    .line 58
    .line 59
    iget-object v2, v2, LI0/o;->e:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v3, 0x1

    .line 66
    invoke-direct {v0, v3, v1, v2, v5}, Lj0/c;-><init>(IIII)V

    .line 67
    .line 68
    .line 69
    iget-object p3, p3, LI0/c;->I:LU4/b;

    .line 70
    .line 71
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p2}, LU4/b;->V(Lj0/c;LB0/w0;)LS0/g;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-eqz p2, :cond_2

    .line 79
    .line 80
    iget p3, p2, LS0/g;->a:I

    .line 81
    .line 82
    const/4 v0, 0x2

    .line 83
    if-ne p3, v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, LI0/b;

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iget-wide p2, p2, LS0/g;->b:J

    .line 94
    .line 95
    invoke-static {p1, p2, p3}, LI0/b;->a(LI0/b;J)Z

    .line 96
    .line 97
    .line 98
    :cond_2
    return v1
.end method
