.class public Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-fiam"


# instance fields
.field private backgroundExecutor:LM4/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LM4/g;"
        }
    .end annotation
.end field

.field private blockingExecutor:LM4/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LM4/g;"
        }
    .end annotation
.end field

.field private legacyTransportFactory:LM4/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LM4/g;"
        }
    .end annotation
.end field

.field private lightWeightExecutor:LM4/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LM4/g;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LM4/g;

    .line 5
    .line 6
    const-class v1, LL4/a;

    .line 7
    .line 8
    const-class v2, Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, LM4/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->backgroundExecutor:LM4/g;

    .line 14
    .line 15
    new-instance v0, LM4/g;

    .line 16
    .line 17
    const-class v1, LL4/b;

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, LM4/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->blockingExecutor:LM4/g;

    .line 23
    .line 24
    new-instance v0, LM4/g;

    .line 25
    .line 26
    const-class v1, LL4/c;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, LM4/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->lightWeightExecutor:LM4/g;

    .line 32
    .line 33
    new-instance v0, LM4/g;

    .line 34
    .line 35
    const-class v1, LO4/a;

    .line 36
    .line 37
    const-class v2, LR2/e;

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, LM4/g;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->legacyTransportFactory:LM4/g;

    .line 43
    .line 44
    return-void
.end method

.method private providesFirebaseInAppMessaging(LM4/b;)LV4/A;
    .locals 1

    .line 1
    invoke-interface {p1}, LM4/b;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, LA0/O;->I(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, LM4/b;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lf5/c;

    .line 13
    .line 14
    invoke-interface {p1}, LM4/b;->b()Le5/a;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, LM4/b;->get()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    throw p1
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
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
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    const-class v3, LV4/A;

    .line 5
    .line 6
    invoke-static {v3}, LM4/a;->d(Ljava/lang/Class;)LM4/a;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string v4, "fire-fiam"

    .line 11
    .line 12
    iput-object v4, v3, LM4/a;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-class v5, Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v5}, LM4/d;->a(Ljava/lang/Class;)LM4/d;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v3, v5}, LM4/a;->a(LM4/d;)V

    .line 21
    .line 22
    .line 23
    const-class v5, Lf5/c;

    .line 24
    .line 25
    invoke-static {v5}, LM4/d;->a(Ljava/lang/Class;)LM4/d;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v3, v5}, LM4/a;->a(LM4/d;)V

    .line 30
    .line 31
    .line 32
    const-class v5, LG4/a;

    .line 33
    .line 34
    invoke-static {v5}, LM4/d;->a(Ljava/lang/Class;)LM4/d;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v3, v5}, LM4/a;->a(LM4/d;)V

    .line 39
    .line 40
    .line 41
    const-class v5, LH4/a;

    .line 42
    .line 43
    invoke-static {v5}, LM4/d;->a(Ljava/lang/Class;)LM4/d;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v3, v5}, LM4/a;->a(LM4/d;)V

    .line 48
    .line 49
    .line 50
    new-instance v5, LM4/d;

    .line 51
    .line 52
    const-class v6, LJ4/a;

    .line 53
    .line 54
    invoke-direct {v5, v1, v2, v6}, LM4/d;-><init>(IILjava/lang/Class;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v5}, LM4/a;->a(LM4/d;)V

    .line 58
    .line 59
    .line 60
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->legacyTransportFactory:LM4/g;

    .line 61
    .line 62
    new-instance v6, LM4/d;

    .line 63
    .line 64
    invoke-direct {v6, v5, v0, v1}, LM4/d;-><init>(LM4/g;II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3, v6}, LM4/a;->a(LM4/d;)V

    .line 68
    .line 69
    .line 70
    const-class v5, LT4/a;

    .line 71
    .line 72
    invoke-static {v5}, LM4/d;->a(Ljava/lang/Class;)LM4/d;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v3, v5}, LM4/a;->a(LM4/d;)V

    .line 77
    .line 78
    .line 79
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->backgroundExecutor:LM4/g;

    .line 80
    .line 81
    new-instance v6, LM4/d;

    .line 82
    .line 83
    invoke-direct {v6, v5, v0, v1}, LM4/d;-><init>(LM4/g;II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v6}, LM4/a;->a(LM4/d;)V

    .line 87
    .line 88
    .line 89
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->blockingExecutor:LM4/g;

    .line 90
    .line 91
    new-instance v6, LM4/d;

    .line 92
    .line 93
    invoke-direct {v6, v5, v0, v1}, LM4/d;-><init>(LM4/g;II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v6}, LM4/a;->a(LM4/d;)V

    .line 97
    .line 98
    .line 99
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingRegistrar;->lightWeightExecutor:LM4/g;

    .line 100
    .line 101
    new-instance v6, LM4/d;

    .line 102
    .line 103
    invoke-direct {v6, v5, v0, v1}, LM4/d;-><init>(LM4/g;II)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v6}, LM4/a;->a(LM4/d;)V

    .line 107
    .line 108
    .line 109
    new-instance v5, LB0/K0;

    .line 110
    .line 111
    invoke-direct {v5, p0}, LB0/K0;-><init>(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iput-object v5, v3, LM4/a;->g:LM4/c;

    .line 115
    .line 116
    invoke-virtual {v3}, LM4/a;->e()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3}, LM4/a;->b()LM4/a;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    const-string v5, "21.0.2"

    .line 124
    .line 125
    invoke-static {v4, v5}, Ly4/k;->A(Ljava/lang/String;Ljava/lang/String;)LM4/a;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    new-array v2, v2, [LM4/a;

    .line 130
    .line 131
    aput-object v3, v2, v1

    .line 132
    .line 133
    aput-object v4, v2, v0

    .line 134
    .line 135
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0
.end method
