.class public Lcom/google/firebase/analytics/connector/internal/AnalyticsConnectorRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambda$getComponents$0(LM4/b;)LJ4/a;
    .locals 1

    .line 1
    invoke-interface {p0}, LM4/b;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, LM4/b;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/content/Context;

    .line 13
    .line 14
    invoke-interface {p0}, LM4/b;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    invoke-static {p0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LM4/a;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, LJ4/a;

    .line 2
    .line 3
    invoke-static {v0}, LM4/a;->d(Ljava/lang/Class;)LM4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, LG4/a;

    .line 8
    .line 9
    invoke-static {v1}, LM4/d;->a(Ljava/lang/Class;)LM4/d;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, LM4/a;->a(LM4/d;)V

    .line 14
    .line 15
    .line 16
    const-class v1, Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, LM4/d;->a(Ljava/lang/Class;)LM4/d;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, LM4/a;->a(LM4/d;)V

    .line 23
    .line 24
    .line 25
    const-class v1, LT4/a;

    .line 26
    .line 27
    invoke-static {v1}, LM4/d;->a(Ljava/lang/Class;)LM4/d;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, LM4/a;->a(LM4/d;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, LU4/b;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, v0, LM4/a;->g:LM4/c;

    .line 40
    .line 41
    invoke-virtual {v0}, LM4/a;->e()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, LM4/a;->b()LM4/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "fire-analytics"

    .line 49
    .line 50
    const-string v2, "22.4.0"

    .line 51
    .line 52
    invoke-static {v1, v2}, Ly4/k;->A(Ljava/lang/String;Ljava/lang/String;)LM4/a;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x2

    .line 57
    new-array v2, v2, [LM4/a;

    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    aput-object v0, v2, v3

    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    aput-object v1, v2, v0

    .line 64
    .line 65
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method
