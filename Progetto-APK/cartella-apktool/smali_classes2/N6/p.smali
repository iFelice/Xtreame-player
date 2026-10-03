.class public abstract LN6/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LJ6/S;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "kotlinx.coroutines.fast.service.loader"

    .line 2
    .line 3
    sget v1, LN6/u;->a:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    nop

    .line 12
    move-object v0, v1

    .line 13
    :goto_0
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, LA0/O;->L()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "<this>"

    .line 23
    .line 24
    invoke-static {v0, v2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lu6/n;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    invoke-direct {v2, v0, v3}, Lu6/n;-><init>(Ljava/lang/Object;I)V

    .line 31
    .line 32
    .line 33
    instance-of v0, v2, LH6/a;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    new-instance v0, LH6/a;

    .line 39
    .line 40
    invoke-direct {v0, v2}, LH6/a;-><init>(Lu6/n;)V

    .line 41
    .line 42
    .line 43
    move-object v2, v0

    .line 44
    :goto_1
    invoke-static {v2}, LH6/e;->N(LH6/c;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    .line 58
    move-object v3, v1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    move-object v4, v3

    .line 72
    check-cast v4, LN6/o;

    .line 73
    .line 74
    invoke-interface {v4}, LN6/o;->c()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    move-object v6, v5

    .line 83
    check-cast v6, LN6/o;

    .line 84
    .line 85
    invoke-interface {v6}, LN6/o;->c()I

    .line 86
    .line 87
    .line 88
    move-result v6

    .line 89
    if-ge v4, v6, :cond_5

    .line 90
    .line 91
    move-object v3, v5

    .line 92
    move v4, v6

    .line 93
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_4

    .line 98
    .line 99
    :goto_2
    check-cast v3, LN6/o;

    .line 100
    .line 101
    if-eqz v3, :cond_6

    .line 102
    .line 103
    :try_start_1
    invoke-interface {v3, v0}, LN6/o;->b(Ljava/util/List;)LJ6/S;

    .line 104
    .line 105
    .line 106
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    goto :goto_3

    .line 108
    :catchall_0
    invoke-interface {v3}, LN6/o;->a()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    :goto_3
    if-eqz v1, :cond_6

    .line 112
    .line 113
    sput-object v1, LN6/p;->a:LJ6/S;

    .line 114
    .line 115
    return-void

    .line 116
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    .line 119
    .line 120
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw v0
.end method
