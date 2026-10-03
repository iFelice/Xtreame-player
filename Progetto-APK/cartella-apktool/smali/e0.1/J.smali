.class public final Le0/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm2/u;


# direct methods
.method public constructor <init>(Le0/K;LF2/G;)V
    .locals 1

    .line 1
    const-string v0, "store"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lf0/a;->b:Lf0/a;

    .line 3
    invoke-direct {p0, p1, p2, v0}, Le0/J;-><init>(Le0/K;LF2/G;Lf0/b;)V

    return-void
.end method

.method public constructor <init>(Le0/K;LF2/G;Lf0/b;)V
    .locals 1

    .line 4
    const-string v0, "store"

    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lm2/u;

    invoke-direct {v0, p1, p2, p3}, Lm2/u;-><init>(Le0/K;LF2/G;Lf0/b;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Le0/J;->a:Lm2/u;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Le0/G;
    .locals 4

    .line 1
    invoke-static {p1}, LD6/l;->a(Ljava/lang/Class;)LD6/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "jClass"

    .line 6
    .line 7
    iget-object v1, p1, LD6/c;->a:Ljava/lang/Class;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->isLocalClass()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    sget-object v3, LD6/c;->c:Ljava/util/HashMap;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Ljava/lang/String;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    const-string v1, "Array"

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :cond_2
    if-nez v2, :cond_4

    .line 64
    .line 65
    const-string v2, "kotlin.Array"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    move-object v2, v0

    .line 77
    check-cast v2, Ljava/lang/String;

    .line 78
    .line 79
    if-nez v2, :cond_4

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    :cond_4
    :goto_0
    if-eqz v2, :cond_5

    .line 86
    .line 87
    const-string v0, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Le0/J;->a:Lm2/u;

    .line 94
    .line 95
    invoke-virtual {v1, p1, v0}, Lm2/u;->D(LD6/c;Ljava/lang/String;)Le0/G;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    return-object p1

    .line 100
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string v0, "Local and anonymous classes can not be ViewModels"

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method
