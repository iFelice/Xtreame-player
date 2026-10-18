.class public abstract Le0/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/I;


# static fields
.field public static final G:LU4/b;

.field public static final H:LU4/b;

.field public static final I:LU4/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LU4/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le0/B;->G:LU4/b;

    .line 7
    .line 8
    new-instance v0, LU4/b;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Le0/B;->H:LU4/b;

    .line 14
    .line 15
    new-instance v0, LU4/b;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Le0/B;->I:LU4/b;

    .line 21
    .line 22
    return-void
.end method

.method public static final b(LS1/g;)V
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Le0/m;->h()Le0/o;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v0, v0, Le0/o;->L:Le0/j;

    .line 11
    .line 12
    sget-object v1, Le0/j;->H:Le0/j;

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    sget-object v1, Le0/j;->I:Le0/j;

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "Failed requirement."

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :cond_1
    :goto_0
    invoke-interface {p0}, LS1/g;->d()LS1/e;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, LS1/e;->a:Ln/g;

    .line 41
    .line 42
    invoke-virtual {v0}, Ln/g;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_2
    move-object v1, v0

    .line 47
    check-cast v1, Ln/e;

    .line 48
    .line 49
    invoke-virtual {v1}, Ln/e;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const-string v3, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v1}, Ln/e;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/util/Map$Entry;

    .line 62
    .line 63
    const-string v2, "components"

    .line 64
    .line 65
    invoke-static {v1, v2}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, LS1/d;

    .line 79
    .line 80
    invoke-static {v2, v3}, Lz4/q0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    const/4 v1, 0x0

    .line 88
    :goto_1
    if-nez v1, :cond_4

    .line 89
    .line 90
    new-instance v0, Le0/D;

    .line 91
    .line 92
    invoke-interface {p0}, LS1/g;->d()LS1/e;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    move-object v2, p0

    .line 97
    check-cast v2, Le0/L;

    .line 98
    .line 99
    invoke-direct {v0, v1, v2}, Le0/D;-><init>(LS1/e;Le0/L;)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p0}, LS1/g;->d()LS1/e;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v3, v0}, LS1/e;->c(Ljava/lang/String;LS1/d;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {p0}, Le0/m;->h()Le0/o;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    new-instance v1, LY/p;

    .line 114
    .line 115
    invoke-direct {v1, v0}, LY/p;-><init>(Le0/D;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v1}, Le0/o;->a(Le0/l;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    return-void
.end method


# virtual methods
.method public abstract a(Le0/l;)V
.end method

.method public abstract c(Le0/l;)V
.end method
