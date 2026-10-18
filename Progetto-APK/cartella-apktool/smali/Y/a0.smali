.class public final LY/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/f;
.implements LS1/g;
.implements Le0/L;


# instance fields
.field public final G:LY/s;

.field public final H:Le0/K;

.field public I:Le0/o;

.field public J:LS1/f;


# direct methods
.method public constructor <init>(LY/s;Le0/K;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, LY/a0;->I:Le0/o;

    .line 6
    .line 7
    iput-object v0, p0, LY/a0;->J:LS1/f;

    .line 8
    .line 9
    iput-object p1, p0, LY/a0;->G:LY/s;

    .line 10
    .line 11
    iput-object p2, p0, LY/a0;->H:Le0/K;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a()Lf0/c;
    .locals 5

    .line 1
    iget-object v0, p0, LY/a0;->G:LY/s;

    .line 2
    .line 3
    invoke-virtual {v0}, LY/s;->M()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    instance-of v2, v1, Landroid/app/Application;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    check-cast v1, Landroid/app/Application;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    new-instance v2, Lf0/c;

    .line 31
    .line 32
    invoke-direct {v2}, Lf0/c;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v3, v2, Lf0/b;->a:Ljava/util/LinkedHashMap;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    sget-object v4, Le0/H;->J:LU4/b;

    .line 40
    .line 41
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    :cond_2
    sget-object v1, Le0/B;->G:LU4/b;

    .line 45
    .line 46
    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    sget-object v1, Le0/B;->H:LU4/b;

    .line 50
    .line 51
    invoke-interface {v3, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, LY/s;->M:Landroid/os/Bundle;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    sget-object v1, Le0/B;->I:LU4/b;

    .line 59
    .line 60
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_3
    return-object v2
.end method

.method public final b(Le0/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, LY/a0;->I:Le0/o;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Le0/o;->f(Le0/i;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c()Le0/K;
    .locals 1

    .line 1
    invoke-virtual {p0}, LY/a0;->e()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LY/a0;->H:Le0/K;

    .line 5
    .line 6
    return-object v0
.end method

.method public final d()LS1/e;
    .locals 1

    .line 1
    invoke-virtual {p0}, LY/a0;->e()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LY/a0;->J:LS1/f;

    .line 5
    .line 6
    iget-object v0, v0, LS1/f;->b:LS1/e;

    .line 7
    .line 8
    return-object v0
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, LY/a0;->I:Le0/o;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Le0/o;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Le0/o;-><init>(Le0/m;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LY/a0;->I:Le0/o;

    .line 11
    .line 12
    invoke-static {p0}, LF2/G;->w(LS1/g;)LS1/f;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, LY/a0;->J:LS1/f;

    .line 17
    .line 18
    invoke-virtual {v0}, LS1/f;->a()V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Le0/B;->b(LS1/g;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final h()Le0/o;
    .locals 1

    .line 1
    invoke-virtual {p0}, LY/a0;->e()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LY/a0;->I:Le0/o;

    .line 5
    .line 6
    return-object v0
.end method
