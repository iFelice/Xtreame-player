.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static lambda$getComponents$0(LM4/b;)Lf5/c;
    .locals 1

    .line 1
    new-instance v0, Lf5/b;

    .line 2
    .line 3
    invoke-interface {p0}, LM4/b;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p0}, LM4/b;->a()Le5/b;

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, LM4/b;->c()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    invoke-interface {p0}, LM4/b;->c()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    new-instance v0, LN4/e;

    .line 26
    .line 27
    invoke-direct {v0, p0}, LN4/e;-><init>(Ljava/util/concurrent/Executor;)V

    .line 28
    .line 29
    .line 30
    new-instance p0, Lg5/a;

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    throw p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
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
    const-class v2, Lf5/c;

    .line 4
    .line 5
    invoke-static {v2}, LM4/a;->d(Ljava/lang/Class;)LM4/a;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "fire-installations"

    .line 10
    .line 11
    iput-object v3, v2, LM4/a;->b:Ljava/lang/String;

    .line 12
    .line 13
    const-class v4, LG4/a;

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
    const-class v5, LU4/a;

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
    new-instance v4, LM4/g;

    .line 33
    .line 34
    const-class v5, LL4/a;

    .line 35
    .line 36
    const-class v6, Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    invoke-direct {v4, v5, v6}, LM4/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    new-instance v5, LM4/d;

    .line 42
    .line 43
    invoke-direct {v5, v4, v0, v1}, LM4/d;-><init>(LM4/g;II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v5}, LM4/a;->a(LM4/d;)V

    .line 47
    .line 48
    .line 49
    new-instance v4, LM4/g;

    .line 50
    .line 51
    const-class v5, LL4/b;

    .line 52
    .line 53
    const-class v6, Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    invoke-direct {v4, v5, v6}, LM4/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 56
    .line 57
    .line 58
    new-instance v5, LM4/d;

    .line 59
    .line 60
    invoke-direct {v5, v4, v0, v1}, LM4/d;-><init>(LM4/g;II)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v5}, LM4/a;->a(LM4/d;)V

    .line 64
    .line 65
    .line 66
    new-instance v4, LC0/g;

    .line 67
    .line 68
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v4, v2, LM4/a;->g:LM4/c;

    .line 72
    .line 73
    invoke-virtual {v2}, LM4/a;->b()LM4/a;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    new-instance v4, LU4/b;

    .line 78
    .line 79
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    const-class v5, LU4/b;

    .line 83
    .line 84
    invoke-static {v5}, LM4/a;->d(Ljava/lang/Class;)LM4/a;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iput v0, v5, LM4/a;->f:I

    .line 89
    .line 90
    new-instance v6, LB0/K0;

    .line 91
    .line 92
    invoke-direct {v6, v4}, LB0/K0;-><init>(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-object v6, v5, LM4/a;->g:LM4/c;

    .line 96
    .line 97
    invoke-virtual {v5}, LM4/a;->b()LM4/a;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const-string v5, "17.2.0"

    .line 102
    .line 103
    invoke-static {v3, v5}, Ly4/k;->A(Ljava/lang/String;Ljava/lang/String;)LM4/a;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const/4 v5, 0x3

    .line 108
    new-array v5, v5, [LM4/a;

    .line 109
    .line 110
    aput-object v2, v5, v1

    .line 111
    .line 112
    aput-object v4, v5, v0

    .line 113
    .line 114
    const/4 v0, 0x2

    .line 115
    aput-object v3, v5, v0

    .line 116
    .line 117
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0
.end method
