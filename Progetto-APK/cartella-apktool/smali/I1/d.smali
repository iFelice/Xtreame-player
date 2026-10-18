.class public final LI1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LK1/e;


# direct methods
.method public constructor <init>(LK1/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LI1/d;->a:LK1/e;

    .line 5
    .line 6
    return-void
.end method

.method public static final b(Landroid/content/Context;)LI1/d;
    .locals 8

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "AdServicesInfo.version="

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    sget-object v2, LG1/b;->a:LG1/b;

    .line 16
    .line 17
    const/16 v3, 0x21

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    if-lt v1, v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, LG1/b;->a()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v5, 0x0

    .line 28
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v5, "MeasurementManager"

    .line 36
    .line 37
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    if-lt v1, v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, LG1/b;->a()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x5

    .line 48
    if-lt v2, v3, :cond_1

    .line 49
    .line 50
    new-instance v1, LK1/c;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-direct {v1, p0, v2}, LK1/c;-><init>(Landroid/content/Context;I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    sget-object v2, LG1/a;->a:LG1/a;

    .line 58
    .line 59
    const/16 v3, 0x20

    .line 60
    .line 61
    const/16 v6, 0x1f

    .line 62
    .line 63
    if-eq v1, v6, :cond_2

    .line 64
    .line 65
    if-ne v1, v3, :cond_5

    .line 66
    .line 67
    :cond_2
    invoke-virtual {v2}, LG1/a;->a()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/16 v7, 0x9

    .line 72
    .line 73
    if-lt v1, v7, :cond_5

    .line 74
    .line 75
    new-instance v1, LK1/b;

    .line 76
    .line 77
    invoke-direct {v1, p0, v4}, LK1/b;-><init>(Landroid/content/Context;I)V

    .line 78
    .line 79
    .line 80
    :try_start_0
    invoke-virtual {v1, p0}, LK1/b;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_1

    .line 85
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    const-string v1, "Unable to find adservices code, check manifest for uses-library tag, versionS="

    .line 88
    .line 89
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 93
    .line 94
    if-eq v1, v6, :cond_3

    .line 95
    .line 96
    if-ne v1, v3, :cond_4

    .line 97
    .line 98
    :cond_3
    invoke-virtual {v2}, LG1/a;->a()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-object p0, v0

    .line 113
    :goto_1
    move-object v1, p0

    .line 114
    check-cast v1, LK1/e;

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_5
    move-object v1, v0

    .line 118
    :goto_2
    if-eqz v1, :cond_6

    .line 119
    .line 120
    new-instance v0, LI1/d;

    .line 121
    .line 122
    invoke-direct {v0, v1}, LI1/d;-><init>(LK1/e;)V

    .line 123
    .line 124
    .line 125
    :cond_6
    return-object v0
.end method


# virtual methods
.method public a(LK1/a;)LD4/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/a;",
            ")",
            "LD4/b;"
        }
    .end annotation

    .line 1
    const-string v0, "deletionRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public c()LD4/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LD4/b;"
        }
    .end annotation

    .line 1
    sget-object v0, LJ6/y;->a:LO6/e;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/k;->a(LJ6/m;)LN6/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, LI1/a;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, LI1/a;-><init>(LI1/d;Lx6/e;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lz4/q0;->d(LN6/a;LC6/p;)LJ6/v;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->a(LJ6/v;)Lt/l;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public d(LK1/f;)LD4/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/f;",
            ")",
            "LD4/b;"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public e(Landroid/net/Uri;Landroid/view/InputEvent;)LD4/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/view/InputEvent;",
            ")",
            "LD4/b;"
        }
    .end annotation

    .line 1
    const-string v0, "attributionSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, LJ6/y;->a:LO6/e;

    .line 7
    .line 8
    invoke-static {v0}, Ly4/k;->a(LJ6/m;)LN6/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, LI1/b;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, p1, p2, v2}, LI1/b;-><init>(LI1/d;Landroid/net/Uri;Landroid/view/InputEvent;Lx6/e;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lz4/q0;->d(LN6/a;LC6/p;)LJ6/v;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->a(LJ6/v;)Lt/l;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public f(Landroid/net/Uri;)LD4/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "LD4/b;"
        }
    .end annotation

    .line 1
    const-string v0, "trigger"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, LJ6/y;->a:LO6/e;

    .line 7
    .line 8
    invoke-static {v0}, Ly4/k;->a(LJ6/m;)LN6/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, LI1/c;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v1, p0, p1, v2}, LI1/c;-><init>(LI1/d;Landroid/net/Uri;Lx6/e;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Lz4/q0;->d(LN6/a;LC6/p;)LJ6/v;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/H1;->a(LJ6/v;)Lt/l;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public g(LK1/g;)LD4/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/g;",
            ")",
            "LD4/b;"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method

.method public h(LK1/h;)LD4/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK1/h;",
            ")",
            "LD4/b;"
        }
    .end annotation

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
