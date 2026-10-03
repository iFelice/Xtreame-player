.class public Lcom/google/firebase/abt/component/AbtRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-abt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$getComponents$0(LM4/b;)LH4/a;
    .locals 2

    .line 1
    new-instance v0, LH4/a;

    .line 2
    .line 3
    invoke-interface {p0}, LM4/b;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/content/Context;

    .line 8
    .line 9
    invoke-interface {p0}, LM4/b;->a()Le5/b;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, v1, p0}, LH4/a;-><init>(Landroid/content/Context;Le5/b;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LM4/a;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-class v2, LH4/a;

    .line 4
    .line 5
    invoke-static {v2}, LM4/a;->d(Ljava/lang/Class;)LM4/a;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "fire-abt"

    .line 10
    .line 11
    iput-object v3, v2, LM4/a;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-class v4, Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v4}, LM4/d;->a(Ljava/lang/Class;)LM4/d;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v2, v4}, LM4/a;->a(LM4/d;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, LM4/d;

    .line 23
    .line 24
    const-class v5, LJ4/a;

    .line 25
    .line 26
    invoke-direct {v4, v1, v0, v5}, LM4/d;-><init>(IILjava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v4}, LM4/a;->a(LM4/d;)V

    .line 30
    .line 31
    .line 32
    new-instance v4, LC0/g;

    .line 33
    .line 34
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v4, v2, LM4/a;->g:LM4/c;

    .line 38
    .line 39
    invoke-virtual {v2}, LM4/a;->b()LM4/a;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v4, "21.1.1"

    .line 44
    .line 45
    invoke-static {v3, v4}, Ly4/k;->A(Ljava/lang/String;Ljava/lang/String;)LM4/a;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    const/4 v4, 0x2

    .line 50
    new-array v4, v4, [LM4/a;

    .line 51
    .line 52
    aput-object v2, v4, v1

    .line 53
    .line 54
    aput-object v3, v4, v0

    .line 55
    .line 56
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
