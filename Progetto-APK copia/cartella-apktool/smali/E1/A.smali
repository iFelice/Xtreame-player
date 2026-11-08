.class public final LE1/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE1/p0;
.implements LE1/d0;


# instance fields
.field public A:I

.field public B:LE1/B;

.field public C:LE1/D;

.field public D:LE1/y;

.field public final E:LE1/u;

.field public final a:Landroid/content/Context;

.field public b:Z

.field public c:LE1/o0;

.field public d:LE1/e0;

.field public e:Z

.field public f:LE1/f;

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/HashMap;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/ArrayList;

.field public final l:LE1/h0;

.field public final m:LE1/u;

.field public final n:LE1/v;

.field public final o:Z

.field public p:LE1/I;

.field public q:LE1/Q;

.field public r:LE1/F;

.field public s:LE1/F;

.field public t:LE1/F;

.field public u:LE1/m;

.field public v:LE1/F;

.field public w:LE1/l;

.field public final x:Ljava/util/HashMap;

.field public y:LE1/i;

.field public z:LE1/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LE1/A;->g:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LE1/A;->h:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, LE1/A;->i:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, LE1/A;->j:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, LE1/A;->k:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v0, LE1/h0;

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-direct {v0, v1}, LE1/h0;-><init>(I)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, LE1/A;->l:LE1/h0;

    .line 46
    .line 47
    new-instance v0, LE1/u;

    .line 48
    .line 49
    const/4 v2, 0x2

    .line 50
    invoke-direct {v0, p0, v2}, LE1/u;-><init>(LE1/A;I)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, LE1/A;->m:LE1/u;

    .line 54
    .line 55
    new-instance v0, LE1/v;

    .line 56
    .line 57
    invoke-direct {v0, p0}, LE1/v;-><init>(LE1/A;)V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, LE1/A;->n:LE1/v;

    .line 61
    .line 62
    new-instance v0, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, LE1/A;->x:Ljava/util/HashMap;

    .line 68
    .line 69
    new-instance v0, LE1/u;

    .line 70
    .line 71
    invoke-direct {v0, p0, v1}, LE1/u;-><init>(LE1/A;I)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, LE1/A;->E:LE1/u;

    .line 75
    .line 76
    iput-object p1, p0, LE1/A;->a:Landroid/content/Context;

    .line 77
    .line 78
    const-string v0, "activity"

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/app/ActivityManager;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    iput-boolean p1, p0, LE1/A;->o:Z

    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public final a(LE1/n;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LE1/A;->e(LE1/n;)LE1/E;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, LE1/E;

    .line 8
    .line 9
    invoke-direct {v0, p1, p2}, LE1/E;-><init>(LE1/n;Z)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, LE1/A;->j:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    sget-object p2, LE1/H;->c:LE1/A;

    .line 18
    .line 19
    iget-object p2, p0, LE1/A;->n:LE1/v;

    .line 20
    .line 21
    const/16 v1, 0x201

    .line 22
    .line 23
    invoke-virtual {p2, v1, v0}, LE1/v;->b(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p1, LE1/n;->g:LE1/o;

    .line 27
    .line 28
    invoke-virtual {p0, v0, p2}, LE1/A;->o(LE1/E;LE1/o;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, LE1/H;->b()V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, LE1/A;->m:LE1/u;

    .line 35
    .line 36
    iput-object p2, p1, LE1/n;->d:LE1/u;

    .line 37
    .line 38
    iget-object p2, p0, LE1/A;->y:LE1/i;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, LE1/n;->h(LE1/i;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final b(LE1/E;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p1, LE1/E;->d:LE1/f0;

    .line 2
    .line 3
    iget-object v0, v0, LE1/f0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/content/ComponentName;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean p1, p1, LE1/E;->c:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move-object v1, p2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, ":"

    .line 18
    .line 19
    invoke-static {v0, v1, p2}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    iget-object v2, p0, LE1/A;->i:Ljava/util/HashMap;

    .line 24
    .line 25
    if-nez p1, :cond_6

    .line 26
    .line 27
    iget-object p1, p0, LE1/A;->h:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    :goto_1
    if-ge v5, v3, :cond_6

    .line 36
    .line 37
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    check-cast v6, LE1/F;

    .line 42
    .line 43
    iget-object v6, v6, LE1/F;->c:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_5

    .line 50
    .line 51
    if-gez v5, :cond_1

    .line 52
    .line 53
    goto :goto_5

    .line 54
    :cond_1
    const-string v3, "Either "

    .line 55
    .line 56
    const-string v5, " isn\'t unique in "

    .line 57
    .line 58
    const-string v6, " or we\'re trying to assign a unique ID for an already added route"

    .line 59
    .line 60
    invoke-static {v3, p2, v5, v0, v6}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    const-string v5, "MediaRouter"

    .line 65
    .line 66
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x2

    .line 70
    :goto_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 71
    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, "_"

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    const/4 v7, 0x0

    .line 97
    :goto_3
    if-ge v7, v6, :cond_4

    .line 98
    .line 99
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    check-cast v8, LE1/F;

    .line 104
    .line 105
    iget-object v8, v8, LE1/F;->c:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-eqz v8, :cond_3

    .line 112
    .line 113
    if-gez v7, :cond_2

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    :goto_4
    new-instance p1, LM/b;

    .line 123
    .line 124
    invoke-direct {p1, v0, p2}, LM/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    return-object v5

    .line 131
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    :goto_5
    new-instance p1, LM/b;

    .line 135
    .line 136
    invoke-direct {p1, v0, p2}, LM/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    return-object v1
.end method

.method public final c()LE1/F;
    .locals 4

    .line 1
    iget-object v0, p0, LE1/A;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, LE1/F;

    .line 18
    .line 19
    iget-object v2, p0, LE1/A;->r:LE1/F;

    .line 20
    .line 21
    if-eq v1, v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, LE1/F;->a()LE1/n;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget-object v3, p0, LE1/A;->c:LE1/o0;

    .line 28
    .line 29
    if-ne v2, v3, :cond_0

    .line 30
    .line 31
    const-string v2, "android.media.intent.category.LIVE_AUDIO"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, LE1/F;->i(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const-string v2, "android.media.intent.category.LIVE_VIDEO"

    .line 40
    .line 41
    invoke-virtual {v1, v2}, LE1/F;->i(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1}, LE1/F;->d()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_1
    iget-object v0, p0, LE1/A;->r:LE1/F;

    .line 55
    .line 56
    return-object v0
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-boolean v0, p0, LE1/A;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, LE1/A;->b:Z

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1e

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    iget-object v4, p0, LE1/A;->a:Landroid/content/Context;

    .line 15
    .line 16
    if-lt v1, v2, :cond_2

    .line 17
    .line 18
    sget v2, LE1/S;->a:I

    .line 19
    .line 20
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    const-class v5, LE1/S;

    .line 23
    .line 24
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v5, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-lez v2, :cond_1

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v2, 0x0

    .line 51
    :goto_0
    iput-boolean v2, p0, LE1/A;->e:Z

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    iput-boolean v3, p0, LE1/A;->e:Z

    .line 55
    .line 56
    :goto_1
    iget-boolean v2, p0, LE1/A;->e:Z

    .line 57
    .line 58
    const/4 v5, 0x0

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    new-instance v2, LE1/f;

    .line 62
    .line 63
    new-instance v6, LE1/u;

    .line 64
    .line 65
    invoke-direct {v6, p0, v0}, LE1/u;-><init>(LE1/A;I)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v4, v6}, LE1/f;-><init>(Landroid/content/Context;LE1/u;)V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, LE1/A;->f:LE1/f;

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    iput-object v5, p0, LE1/A;->f:LE1/f;

    .line 75
    .line 76
    :goto_2
    const/16 v2, 0x18

    .line 77
    .line 78
    if-lt v1, v2, :cond_4

    .line 79
    .line 80
    new-instance v2, LE1/i0;

    .line 81
    .line 82
    invoke-direct {v2, v4, p0}, LE1/m0;-><init>(Landroid/content/Context;LE1/A;)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_4
    new-instance v2, LE1/o0;

    .line 87
    .line 88
    invoke-direct {v2, v4, p0}, LE1/m0;-><init>(Landroid/content/Context;LE1/A;)V

    .line 89
    .line 90
    .line 91
    :goto_3
    iput-object v2, p0, LE1/A;->c:LE1/o0;

    .line 92
    .line 93
    new-instance v2, LE1/I;

    .line 94
    .line 95
    new-instance v6, LE1/t;

    .line 96
    .line 97
    invoke-direct {v6, p0, v3}, LE1/t;-><init>(Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    invoke-direct {v2, v6}, LE1/I;-><init>(LE1/t;)V

    .line 101
    .line 102
    .line 103
    iput-object v2, p0, LE1/A;->p:LE1/I;

    .line 104
    .line 105
    iget-object v2, p0, LE1/A;->c:LE1/o0;

    .line 106
    .line 107
    invoke-virtual {p0, v2, v0}, LE1/A;->a(LE1/n;Z)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p0, LE1/A;->f:LE1/f;

    .line 111
    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    invoke-virtual {p0, v2, v0}, LE1/A;->a(LE1/n;Z)V

    .line 115
    .line 116
    .line 117
    :cond_5
    new-instance v2, LE1/e0;

    .line 118
    .line 119
    invoke-direct {v2, v4, p0}, LE1/e0;-><init>(Landroid/content/Context;LE1/A;)V

    .line 120
    .line 121
    .line 122
    iput-object v2, p0, LE1/A;->d:LE1/e0;

    .line 123
    .line 124
    iget-boolean v3, v2, LE1/e0;->b:Z

    .line 125
    .line 126
    if-nez v3, :cond_7

    .line 127
    .line 128
    iput-boolean v0, v2, LE1/e0;->b:Z

    .line 129
    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    .line 131
    .line 132
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 136
    .line 137
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    .line 151
    .line 152
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    .line 156
    .line 157
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v3, "package"

    .line 161
    .line 162
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const/16 v3, 0x21

    .line 166
    .line 167
    iget-object v4, v2, LE1/e0;->a:Landroid/content/Context;

    .line 168
    .line 169
    if-ge v1, v3, :cond_6

    .line 170
    .line 171
    iget-object v1, v2, LE1/e0;->g:Ljava/lang/Object;

    .line 172
    .line 173
    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 174
    .line 175
    iget-object v3, v2, LE1/e0;->d:Ljava/lang/Object;

    .line 176
    .line 177
    check-cast v3, Landroid/os/Handler;

    .line 178
    .line 179
    invoke-virtual {v4, v1, v0, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 180
    .line 181
    .line 182
    goto :goto_4

    .line 183
    :cond_6
    iget-object v1, v2, LE1/e0;->g:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 186
    .line 187
    iget-object v3, v2, LE1/e0;->d:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v3, Landroid/os/Handler;

    .line 190
    .line 191
    const/4 v5, 0x4

    .line 192
    invoke-static {v4, v1, v0, v3, v5}, LE1/c0;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;I)V

    .line 193
    .line 194
    .line 195
    :goto_4
    iget-object v0, v2, LE1/e0;->d:Ljava/lang/Object;

    .line 196
    .line 197
    check-cast v0, Landroid/os/Handler;

    .line 198
    .line 199
    iget-object v1, v2, LE1/e0;->h:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v1, Ljava/lang/Runnable;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    .line 205
    .line 206
    :cond_7
    return-void
.end method

.method public final e(LE1/n;)LE1/E;
    .locals 4

    .line 1
    iget-object v0, p0, LE1/A;->j:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, LE1/E;

    .line 15
    .line 16
    iget-object v3, v3, LE1/E;->a:LE1/n;

    .line 17
    .line 18
    if-ne v3, p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, LE1/E;

    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return-object p1
.end method

.method public final f()LE1/F;
    .locals 2

    .line 1
    iget-object v0, p0, LE1/A;->t:LE1/F;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LE1/A;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, LE1/A;->q:LE1/Q;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-boolean v0, v0, LE1/Q;->a:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final h()V
    .locals 6

    .line 1
    iget-object v0, p0, LE1/A;->t:LE1/F;

    .line 2
    .line 3
    iget-object v0, v0, LE1/F;->u:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-lt v0, v1, :cond_4

    .line 15
    .line 16
    iget-object v0, p0, LE1/A;->t:LE1/F;

    .line 17
    .line 18
    iget-object v0, v0, LE1/F;->u:Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, LE1/F;

    .line 44
    .line 45
    iget-object v3, v3, LE1/F;->c:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v2, p0, LE1/A;->x:Ljava/util/HashMap;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/util/Map$Entry;

    .line 72
    .line 73
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    if-nez v5, :cond_1

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, LE1/m;

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    invoke-virtual {v4, v5}, LE1/m;->h(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, LE1/m;->d()V

    .line 94
    .line 95
    .line 96
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, LE1/F;

    .line 115
    .line 116
    iget-object v3, v1, LE1/F;->c:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_3

    .line 123
    .line 124
    invoke-virtual {v1}, LE1/F;->a()LE1/n;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    iget-object v4, p0, LE1/A;->t:LE1/F;

    .line 129
    .line 130
    iget-object v4, v4, LE1/F;->b:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v5, v1, LE1/F;->b:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v3, v5, v4}, LE1/n;->e(Ljava/lang/String;Ljava/lang/String;)LE1/m;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3}, LE1/m;->e()V

    .line 139
    .line 140
    .line 141
    iget-object v1, v1, LE1/F;->c:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_4
    return-void
.end method

.method public final i(LE1/A;LE1/F;LE1/m;ILE1/F;Ljava/util/Collection;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, LE1/A;->C:LE1/D;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {v1}, LE1/D;->a()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, LE1/A;->C:LE1/D;

    .line 11
    .line 12
    :cond_0
    new-instance v1, LE1/D;

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    move-object v3, p1

    .line 16
    move-object v4, p2

    .line 17
    move-object v5, p3

    .line 18
    move v6, p4

    .line 19
    move-object v7, p5

    .line 20
    move-object v8, p6

    .line 21
    invoke-direct/range {v2 .. v8}, LE1/D;-><init>(LE1/A;LE1/F;LE1/m;ILE1/F;Ljava/util/Collection;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, LE1/A;->C:LE1/D;

    .line 25
    .line 26
    iget p1, v1, LE1/D;->b:I

    .line 27
    .line 28
    const/4 p2, 0x3

    .line 29
    if-ne p1, p2, :cond_5

    .line 30
    .line 31
    iget-object p1, p0, LE1/A;->B:LE1/B;

    .line 32
    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object p2, p0, LE1/A;->t:LE1/F;

    .line 37
    .line 38
    check-cast p1, Lcom/google/android/gms/internal/cast/p;

    .line 39
    .line 40
    iget-object p3, v1, LE1/D;->d:LE1/F;

    .line 41
    .line 42
    const/4 p4, 0x2

    .line 43
    new-array p4, p4, [Ljava/lang/Object;

    .line 44
    .line 45
    const/4 p5, 0x0

    .line 46
    aput-object p2, p4, p5

    .line 47
    .line 48
    aput-object p3, p4, v0

    .line 49
    .line 50
    const-string p5, "Prepare transfer from Route(%s) to Route(%s)"

    .line 51
    .line 52
    sget-object p6, Lcom/google/android/gms/internal/cast/p;->c:LH3/b;

    .line 53
    .line 54
    invoke-virtual {p6, p5, p4}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p4, Lcom/google/android/gms/internal/ads/bD;

    .line 58
    .line 59
    const/16 p5, 0x9

    .line 60
    .line 61
    invoke-direct {p4, p1, p2, p3, p5}, Lcom/google/android/gms/internal/ads/bD;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {p4}, Lcom/bumptech/glide/d;->k(Lt/j;)Lt/l;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object p2, p0, LE1/A;->C:LE1/D;

    .line 69
    .line 70
    iget-object p3, p2, LE1/D;->g:Ljava/lang/ref/WeakReference;

    .line 71
    .line 72
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    check-cast p3, LE1/A;

    .line 77
    .line 78
    if-eqz p3, :cond_4

    .line 79
    .line 80
    iget-object p4, p3, LE1/A;->C:LE1/D;

    .line 81
    .line 82
    if-eq p4, p2, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iget-object p4, p2, LE1/D;->h:LD4/b;

    .line 86
    .line 87
    if-nez p4, :cond_3

    .line 88
    .line 89
    iput-object p1, p2, LE1/D;->h:LD4/b;

    .line 90
    .line 91
    new-instance p4, LE1/C;

    .line 92
    .line 93
    invoke-direct {p4, p2, v0}, LE1/C;-><init>(LE1/D;I)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p3, LE1/A;->n:LE1/v;

    .line 97
    .line 98
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    new-instance p3, LB0/t;

    .line 102
    .line 103
    invoke-direct {p3, p2, v0}, LB0/t;-><init>(Ljava/lang/Object;I)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p1, Lt/l;->H:Lt/k;

    .line 107
    .line 108
    invoke-virtual {p1, p4, p3}, Lt/h;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 113
    .line 114
    const-string p2, "future is already set"

    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw p1

    .line 120
    :cond_4
    :goto_0
    const-string p1, "MediaRouter"

    .line 121
    .line 122
    const-string p3, "Router is released. Cancel transfer"

    .line 123
    .line 124
    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, LE1/D;->a()V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_5
    :goto_1
    invoke-virtual {v1}, LE1/D;->b()V

    .line 132
    .line 133
    .line 134
    :goto_2
    return-void
.end method

.method public final j(LE1/n;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, LE1/A;->e(LE1/n;)LE1/E;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, LE1/H;->b()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p1, LE1/n;->d:LE1/u;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, LE1/n;->h(LE1/i;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, LE1/A;->o(LE1/E;LE1/o;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, LE1/A;->n:LE1/v;

    .line 23
    .line 24
    const/16 v1, 0x202

    .line 25
    .line 26
    invoke-virtual {p1, v1, v0}, LE1/v;->b(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, LE1/A;->j:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final k(LE1/F;I)V
    .locals 4

    .line 1
    iget-object v0, p0, LE1/A;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "MediaRouter"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v0, "Ignoring attempt to select removed route: "

    .line 14
    .line 15
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-boolean v0, p1, LE1/F;->g:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Ignoring attempt to select disabled route: "

    .line 36
    .line 37
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    const/16 v1, 0x1e

    .line 54
    .line 55
    if-lt v0, v1, :cond_6

    .line 56
    .line 57
    invoke-virtual {p1}, LE1/F;->a()LE1/n;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iget-object v1, p0, LE1/A;->f:LE1/f;

    .line 62
    .line 63
    if-ne v0, v1, :cond_6

    .line 64
    .line 65
    iget-object v0, p0, LE1/A;->t:LE1/F;

    .line 66
    .line 67
    if-eq v0, p1, :cond_6

    .line 68
    .line 69
    iget-object p1, p1, LE1/F;->b:Ljava/lang/String;

    .line 70
    .line 71
    const/4 p2, 0x0

    .line 72
    if-nez p1, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, v1, LE1/f;->p:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-static {v2}, LB0/s;->b(Ljava/lang/Object;)Landroid/media/MediaRoute2Info;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-static {v2}, LB0/s;->z(Landroid/media/MediaRoute2Info;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_3

    .line 104
    .line 105
    move-object p2, v2

    .line 106
    :cond_4
    :goto_0
    if-nez p2, :cond_5

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v0, "transferTo: Specified route not found. routeId="

    .line 114
    .line 115
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string p2, "MR2Provider"

    .line 126
    .line 127
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    iget-object p1, v1, LE1/f;->i:Landroid/media/MediaRouter2;

    .line 132
    .line 133
    invoke-static {p1, p2}, LB0/s;->t(Landroid/media/MediaRouter2;Landroid/media/MediaRoute2Info;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    return-void

    .line 137
    :cond_6
    invoke-virtual {p0, p1, p2}, LE1/A;->l(LE1/F;I)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public final l(LE1/F;I)V
    .locals 10

    .line 1
    sget-object v0, LE1/H;->c:LE1/A;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, LE1/A;->s:LE1/F;

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-static {}, LE1/H;->b()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, LE1/H;->c()LE1/A;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v0, v0, LE1/A;->r:LE1/F;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    if-ne v0, p1, :cond_4

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string p2, "There is no default route.  The media router has not yet been fully initialized."

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x3

    .line 49
    :goto_1
    array-length v4, v0

    .line 50
    if-ge v3, v4, :cond_2

    .line 51
    .line 52
    aget-object v4, v0, v3

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v5, "."

    .line 62
    .line 63
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, ":"

    .line 74
    .line 75
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, "  "

    .line 86
    .line 87
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    add-int/lit8 v3, v3, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    sget-object v0, LE1/H;->c:LE1/A;

    .line 94
    .line 95
    if-nez v0, :cond_3

    .line 96
    .line 97
    const-string v0, "MediaRouter"

    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v4, "setSelectedRouteInternal is called while sGlobal is null: pkgName="

    .line 102
    .line 103
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v4, p0, LE1/A;->a:Landroid/content/Context;

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v4, ", callers="

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    const-string v0, "MediaRouter"

    .line 132
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v4, "Default route is selected while a BT route is available: pkgName="

    .line 136
    .line 137
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v4, p0, LE1/A;->a:Landroid/content/Context;

    .line 141
    .line 142
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v4, ", callers="

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    :cond_4
    :goto_2
    iget-object v0, p0, LE1/A;->t:LE1/F;

    .line 165
    .line 166
    if-ne v0, p1, :cond_5

    .line 167
    .line 168
    return-void

    .line 169
    :cond_5
    iget-object v0, p0, LE1/A;->v:LE1/F;

    .line 170
    .line 171
    const/4 v2, 0x0

    .line 172
    if-eqz v0, :cond_6

    .line 173
    .line 174
    iput-object v2, p0, LE1/A;->v:LE1/F;

    .line 175
    .line 176
    iget-object v0, p0, LE1/A;->w:LE1/l;

    .line 177
    .line 178
    if-eqz v0, :cond_6

    .line 179
    .line 180
    invoke-virtual {v0, v1}, LE1/m;->h(I)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, LE1/A;->w:LE1/l;

    .line 184
    .line 185
    invoke-virtual {v0}, LE1/m;->d()V

    .line 186
    .line 187
    .line 188
    iput-object v2, p0, LE1/A;->w:LE1/l;

    .line 189
    .line 190
    :cond_6
    invoke-virtual {p0}, LE1/A;->g()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-eqz v0, :cond_c

    .line 195
    .line 196
    iget-object v0, p1, LE1/F;->a:LE1/E;

    .line 197
    .line 198
    iget-object v0, v0, LE1/E;->e:LE1/o;

    .line 199
    .line 200
    if-eqz v0, :cond_c

    .line 201
    .line 202
    iget-boolean v0, v0, LE1/o;->b:Z

    .line 203
    .line 204
    if-eqz v0, :cond_c

    .line 205
    .line 206
    invoke-virtual {p1}, LE1/F;->a()LE1/n;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iget-object v1, p1, LE1/F;->b:Ljava/lang/String;

    .line 211
    .line 212
    invoke-virtual {v0, v1}, LE1/n;->c(Ljava/lang/String;)LE1/l;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    if-eqz v0, :cond_b

    .line 217
    .line 218
    iget-object p2, p0, LE1/A;->a:Landroid/content/Context;

    .line 219
    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 221
    .line 222
    const/16 v3, 0x1c

    .line 223
    .line 224
    if-lt v1, v3, :cond_7

    .line 225
    .line 226
    invoke-static {p2}, Lm/d;->e(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    goto :goto_3

    .line 231
    :cond_7
    new-instance v1, Landroid/os/Handler;

    .line 232
    .line 233
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    .line 239
    .line 240
    new-instance p2, LJ/e;

    .line 241
    .line 242
    const/4 v3, 0x0

    .line 243
    invoke-direct {p2, v3, v1}, LJ/e;-><init>(ILandroid/os/Handler;)V

    .line 244
    .line 245
    .line 246
    :goto_3
    iget-object v5, p0, LE1/A;->E:LE1/u;

    .line 247
    .line 248
    iget-object v1, v0, LE1/l;->a:Ljava/lang/Object;

    .line 249
    .line 250
    monitor-enter v1

    .line 251
    if-eqz p2, :cond_a

    .line 252
    .line 253
    if-eqz v5, :cond_9

    .line 254
    .line 255
    :try_start_0
    iput-object p2, v0, LE1/l;->b:Ljava/util/concurrent/Executor;

    .line 256
    .line 257
    iput-object v5, v0, LE1/l;->c:LE1/u;

    .line 258
    .line 259
    iget-object p2, v0, LE1/l;->e:Ljava/util/ArrayList;

    .line 260
    .line 261
    if-eqz p2, :cond_8

    .line 262
    .line 263
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-nez p2, :cond_8

    .line 268
    .line 269
    iget-object v6, v0, LE1/l;->d:LE1/h;

    .line 270
    .line 271
    iget-object v7, v0, LE1/l;->e:Ljava/util/ArrayList;

    .line 272
    .line 273
    iput-object v2, v0, LE1/l;->d:LE1/h;

    .line 274
    .line 275
    iput-object v2, v0, LE1/l;->e:Ljava/util/ArrayList;

    .line 276
    .line 277
    iget-object p2, v0, LE1/l;->b:Ljava/util/concurrent/Executor;

    .line 278
    .line 279
    new-instance v2, LE1/j;

    .line 280
    .line 281
    const/4 v8, 0x0

    .line 282
    move-object v3, v2

    .line 283
    move-object v4, v0

    .line 284
    invoke-direct/range {v3 .. v8}, LE1/j;-><init>(LE1/l;LE1/u;LE1/h;Ljava/util/Collection;I)V

    .line 285
    .line 286
    .line 287
    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :catchall_0
    move-exception p1

    .line 292
    goto :goto_5

    .line 293
    :cond_8
    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iput-object p1, p0, LE1/A;->v:LE1/F;

    .line 295
    .line 296
    iput-object v0, p0, LE1/A;->w:LE1/l;

    .line 297
    .line 298
    invoke-virtual {v0}, LE1/m;->e()V

    .line 299
    .line 300
    .line 301
    return-void

    .line 302
    :cond_9
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 303
    .line 304
    const-string p2, "Listener shouldn\'t be null"

    .line 305
    .line 306
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p1

    .line 310
    :cond_a
    new-instance p1, Ljava/lang/NullPointerException;

    .line 311
    .line 312
    const-string p2, "Executor shouldn\'t be null"

    .line 313
    .line 314
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    throw p1

    .line 318
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    throw p1

    .line 320
    :cond_b
    const-string v0, "MediaRouter"

    .line 321
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    .line 323
    .line 324
    const-string v3, "setSelectedRouteInternal: Failed to create dynamic group route controller. route="

    .line 325
    .line 326
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    :cond_c
    invoke-virtual {p1}, LE1/F;->a()LE1/n;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    iget-object v1, p1, LE1/F;->b:Ljava/lang/String;

    .line 344
    .line 345
    invoke-virtual {v0, v1}, LE1/n;->d(Ljava/lang/String;)LE1/m;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    if-eqz v6, :cond_d

    .line 350
    .line 351
    invoke-virtual {v6}, LE1/m;->e()V

    .line 352
    .line 353
    .line 354
    :cond_d
    iget-object v0, p0, LE1/A;->t:LE1/F;

    .line 355
    .line 356
    if-nez v0, :cond_e

    .line 357
    .line 358
    iput-object p1, p0, LE1/A;->t:LE1/F;

    .line 359
    .line 360
    iput-object v6, p0, LE1/A;->u:LE1/m;

    .line 361
    .line 362
    iget-object v0, p0, LE1/A;->n:LE1/v;

    .line 363
    .line 364
    new-instance v1, LM/b;

    .line 365
    .line 366
    invoke-direct {v1, v2, p1}, LM/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    .line 368
    .line 369
    const/16 p1, 0x106

    .line 370
    .line 371
    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 376
    .line 377
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 378
    .line 379
    .line 380
    goto :goto_6

    .line 381
    :cond_e
    const/4 v8, 0x0

    .line 382
    const/4 v9, 0x0

    .line 383
    move-object v3, p0

    .line 384
    move-object v4, p0

    .line 385
    move-object v5, p1

    .line 386
    move v7, p2

    .line 387
    invoke-virtual/range {v3 .. v9}, LE1/A;->i(LE1/A;LE1/F;LE1/m;ILE1/F;Ljava/util/Collection;)V

    .line 388
    .line 389
    .line 390
    :goto_6
    return-void
.end method

.method public final m()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, LE1/f0;

    .line 4
    .line 5
    invoke-direct {v1}, LE1/f0;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, LE1/A;->p:LE1/I;

    .line 9
    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    iput-wide v3, v2, LE1/I;->a:J

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    iput-boolean v5, v2, LE1/I;->b:Z

    .line 16
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 18
    .line 19
    .line 20
    move-result-wide v6

    .line 21
    iput-wide v6, v2, LE1/I;->c:J

    .line 22
    .line 23
    iget-object v6, v2, LE1/I;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v6, Landroid/os/Handler;

    .line 26
    .line 27
    iget-object v2, v2, LE1/I;->e:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, v0, LE1/A;->g:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    :goto_0
    add-int/lit8 v6, v6, -0x1

    .line 43
    .line 44
    iget-boolean v9, v0, LE1/A;->o:Z

    .line 45
    .line 46
    if-ltz v6, :cond_9

    .line 47
    .line 48
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    check-cast v10, Ljava/lang/ref/WeakReference;

    .line 53
    .line 54
    invoke-virtual {v10}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    check-cast v10, LE1/H;

    .line 59
    .line 60
    if-nez v10, :cond_0

    .line 61
    .line 62
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move/from16 v16, v6

    .line 66
    .line 67
    goto/16 :goto_5

    .line 68
    .line 69
    :cond_0
    iget-object v10, v10, LE1/H;->b:Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    add-int/2addr v7, v11

    .line 76
    const/4 v12, 0x0

    .line 77
    :goto_1
    if-ge v12, v11, :cond_8

    .line 78
    .line 79
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    check-cast v13, LE1/r;

    .line 84
    .line 85
    iget-object v14, v13, LE1/r;->c:LE1/p;

    .line 86
    .line 87
    if-eqz v14, :cond_7

    .line 88
    .line 89
    invoke-virtual {v14}, LE1/p;->b()Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v14

    .line 93
    invoke-virtual {v1, v14}, LE1/f0;->c(Ljava/util/ArrayList;)V

    .line 94
    .line 95
    .line 96
    iget v14, v13, LE1/r;->d:I

    .line 97
    .line 98
    const/4 v15, 0x1

    .line 99
    and-int/2addr v14, v15

    .line 100
    if-eqz v14, :cond_1

    .line 101
    .line 102
    const/4 v14, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_1
    const/4 v14, 0x0

    .line 105
    :goto_2
    iget-object v5, v0, LE1/A;->p:LE1/I;

    .line 106
    .line 107
    iget-wide v3, v13, LE1/r;->e:J

    .line 108
    .line 109
    if-nez v14, :cond_2

    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    move/from16 v16, v6

    .line 115
    .line 116
    move/from16 v17, v7

    .line 117
    .line 118
    :goto_3
    move-object/from16 v18, v10

    .line 119
    .line 120
    move/from16 v19, v11

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_2
    move/from16 v16, v6

    .line 124
    .line 125
    move/from16 v17, v7

    .line 126
    .line 127
    iget-wide v6, v5, LE1/I;->c:J

    .line 128
    .line 129
    sub-long v18, v6, v3

    .line 130
    .line 131
    const-wide/16 v20, 0x7530

    .line 132
    .line 133
    cmp-long v22, v18, v20

    .line 134
    .line 135
    if-ltz v22, :cond_3

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_3
    move-object/from16 v18, v10

    .line 139
    .line 140
    move/from16 v19, v11

    .line 141
    .line 142
    iget-wide v10, v5, LE1/I;->a:J

    .line 143
    .line 144
    add-long v3, v3, v20

    .line 145
    .line 146
    sub-long/2addr v3, v6

    .line 147
    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 148
    .line 149
    .line 150
    move-result-wide v3

    .line 151
    iput-wide v3, v5, LE1/I;->a:J

    .line 152
    .line 153
    iput-boolean v15, v5, LE1/I;->b:Z

    .line 154
    .line 155
    :goto_4
    if-eqz v14, :cond_4

    .line 156
    .line 157
    const/4 v8, 0x1

    .line 158
    :cond_4
    iget v3, v13, LE1/r;->d:I

    .line 159
    .line 160
    and-int/lit8 v4, v3, 0x4

    .line 161
    .line 162
    if-eqz v4, :cond_5

    .line 163
    .line 164
    if-nez v9, :cond_5

    .line 165
    .line 166
    const/4 v8, 0x1

    .line 167
    :cond_5
    and-int/lit8 v3, v3, 0x8

    .line 168
    .line 169
    if-eqz v3, :cond_6

    .line 170
    .line 171
    const/4 v8, 0x1

    .line 172
    :cond_6
    add-int/lit8 v12, v12, 0x1

    .line 173
    .line 174
    move/from16 v6, v16

    .line 175
    .line 176
    move/from16 v7, v17

    .line 177
    .line 178
    move-object/from16 v10, v18

    .line 179
    .line 180
    move/from16 v11, v19

    .line 181
    .line 182
    const-wide/16 v3, 0x0

    .line 183
    .line 184
    const/4 v5, 0x0

    .line 185
    goto :goto_1

    .line 186
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 187
    .line 188
    const-string v2, "selector must not be null"

    .line 189
    .line 190
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v1

    .line 194
    :cond_8
    move/from16 v16, v6

    .line 195
    .line 196
    move/from16 v17, v7

    .line 197
    .line 198
    :goto_5
    move/from16 v6, v16

    .line 199
    .line 200
    const-wide/16 v3, 0x0

    .line 201
    .line 202
    const/4 v5, 0x0

    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_9
    iget-object v2, v0, LE1/A;->p:LE1/I;

    .line 206
    .line 207
    iget-boolean v3, v2, LE1/I;->b:Z

    .line 208
    .line 209
    if-eqz v3, :cond_a

    .line 210
    .line 211
    iget-wide v3, v2, LE1/I;->a:J

    .line 212
    .line 213
    const-wide/16 v5, 0x0

    .line 214
    .line 215
    cmp-long v10, v3, v5

    .line 216
    .line 217
    if-lez v10, :cond_a

    .line 218
    .line 219
    iget-object v5, v2, LE1/I;->d:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v5, Landroid/os/Handler;

    .line 222
    .line 223
    iget-object v6, v2, LE1/I;->e:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v6, Ljava/lang/Runnable;

    .line 226
    .line 227
    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 228
    .line 229
    .line 230
    :cond_a
    iget-boolean v2, v2, LE1/I;->b:Z

    .line 231
    .line 232
    iput v7, v0, LE1/A;->A:I

    .line 233
    .line 234
    if-eqz v8, :cond_b

    .line 235
    .line 236
    invoke-virtual {v1}, LE1/f0;->d()LE1/p;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    goto :goto_6

    .line 241
    :cond_b
    sget-object v3, LE1/p;->c:LE1/p;

    .line 242
    .line 243
    :goto_6
    invoke-virtual {v1}, LE1/f0;->d()LE1/p;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual/range {p0 .. p0}, LE1/A;->g()Z

    .line 248
    .line 249
    .line 250
    move-result v4

    .line 251
    const/4 v5, 0x0

    .line 252
    if-nez v4, :cond_c

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_c
    iget-object v4, v0, LE1/A;->z:LE1/i;

    .line 256
    .line 257
    if-eqz v4, :cond_d

    .line 258
    .line 259
    invoke-virtual {v4}, LE1/i;->a()V

    .line 260
    .line 261
    .line 262
    iget-object v4, v4, LE1/i;->b:LE1/p;

    .line 263
    .line 264
    invoke-virtual {v4, v1}, LE1/p;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_d

    .line 269
    .line 270
    iget-object v4, v0, LE1/A;->z:LE1/i;

    .line 271
    .line 272
    invoke-virtual {v4}, LE1/i;->b()Z

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    if-ne v4, v2, :cond_d

    .line 277
    .line 278
    goto :goto_8

    .line 279
    :cond_d
    invoke-virtual {v1}, LE1/p;->a()V

    .line 280
    .line 281
    .line 282
    iget-object v4, v1, LE1/p;->b:Ljava/util/List;

    .line 283
    .line 284
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    if-eqz v4, :cond_f

    .line 289
    .line 290
    if-nez v2, :cond_f

    .line 291
    .line 292
    iget-object v1, v0, LE1/A;->z:LE1/i;

    .line 293
    .line 294
    if-nez v1, :cond_e

    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_e
    iput-object v5, v0, LE1/A;->z:LE1/i;

    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_f
    new-instance v4, LE1/i;

    .line 301
    .line 302
    invoke-direct {v4, v1, v2}, LE1/i;-><init>(LE1/p;Z)V

    .line 303
    .line 304
    .line 305
    iput-object v4, v0, LE1/A;->z:LE1/i;

    .line 306
    .line 307
    :goto_7
    sget-object v1, LE1/H;->c:LE1/A;

    .line 308
    .line 309
    iget-object v1, v0, LE1/A;->f:LE1/f;

    .line 310
    .line 311
    iget-object v4, v0, LE1/A;->z:LE1/i;

    .line 312
    .line 313
    invoke-virtual {v1, v4}, LE1/n;->h(LE1/i;)V

    .line 314
    .line 315
    .line 316
    :goto_8
    iget-object v1, v0, LE1/A;->y:LE1/i;

    .line 317
    .line 318
    if-eqz v1, :cond_10

    .line 319
    .line 320
    invoke-virtual {v1}, LE1/i;->a()V

    .line 321
    .line 322
    .line 323
    iget-object v1, v1, LE1/i;->b:LE1/p;

    .line 324
    .line 325
    invoke-virtual {v1, v3}, LE1/p;->equals(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    move-result v1

    .line 329
    if-eqz v1, :cond_10

    .line 330
    .line 331
    iget-object v1, v0, LE1/A;->y:LE1/i;

    .line 332
    .line 333
    invoke-virtual {v1}, LE1/i;->b()Z

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    if-ne v1, v2, :cond_10

    .line 338
    .line 339
    return-void

    .line 340
    :cond_10
    invoke-virtual {v3}, LE1/p;->a()V

    .line 341
    .line 342
    .line 343
    iget-object v1, v3, LE1/p;->b:Ljava/util/List;

    .line 344
    .line 345
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    if-eqz v1, :cond_12

    .line 350
    .line 351
    if-nez v2, :cond_12

    .line 352
    .line 353
    iget-object v1, v0, LE1/A;->y:LE1/i;

    .line 354
    .line 355
    if-nez v1, :cond_11

    .line 356
    .line 357
    return-void

    .line 358
    :cond_11
    iput-object v5, v0, LE1/A;->y:LE1/i;

    .line 359
    .line 360
    goto :goto_9

    .line 361
    :cond_12
    new-instance v1, LE1/i;

    .line 362
    .line 363
    invoke-direct {v1, v3, v2}, LE1/i;-><init>(LE1/p;Z)V

    .line 364
    .line 365
    .line 366
    iput-object v1, v0, LE1/A;->y:LE1/i;

    .line 367
    .line 368
    :goto_9
    sget-object v1, LE1/H;->c:LE1/A;

    .line 369
    .line 370
    if-eqz v8, :cond_13

    .line 371
    .line 372
    if-nez v2, :cond_13

    .line 373
    .line 374
    if-eqz v9, :cond_13

    .line 375
    .line 376
    const-string v1, "MediaRouter"

    .line 377
    .line 378
    const-string v2, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    .line 379
    .line 380
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    :cond_13
    iget-object v1, v0, LE1/A;->j:Ljava/util/ArrayList;

    .line 384
    .line 385
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 386
    .line 387
    .line 388
    move-result v2

    .line 389
    const/4 v5, 0x0

    .line 390
    :goto_a
    if-ge v5, v2, :cond_15

    .line 391
    .line 392
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    check-cast v3, LE1/E;

    .line 397
    .line 398
    iget-object v3, v3, LE1/E;->a:LE1/n;

    .line 399
    .line 400
    iget-object v4, v0, LE1/A;->f:LE1/f;

    .line 401
    .line 402
    if-ne v3, v4, :cond_14

    .line 403
    .line 404
    goto :goto_b

    .line 405
    :cond_14
    iget-object v4, v0, LE1/A;->y:LE1/i;

    .line 406
    .line 407
    invoke-virtual {v3, v4}, LE1/n;->h(LE1/i;)V

    .line 408
    .line 409
    .line 410
    :goto_b
    add-int/lit8 v5, v5, 0x1

    .line 411
    .line 412
    goto :goto_a

    .line 413
    :cond_15
    return-void
.end method

.method public final n()V
    .locals 11

    .line 1
    iget-object v0, p0, LE1/A;->t:LE1/F;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget v1, v0, LE1/F;->o:I

    .line 6
    .line 7
    iget-object v2, p0, LE1/A;->l:LE1/h0;

    .line 8
    .line 9
    iput v1, v2, LE1/h0;->b:I

    .line 10
    .line 11
    iget v1, v0, LE1/F;->p:I

    .line 12
    .line 13
    iput v1, v2, LE1/h0;->c:I

    .line 14
    .line 15
    invoke-virtual {v0}, LE1/F;->b()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, v2, LE1/h0;->d:I

    .line 20
    .line 21
    iget-object v0, p0, LE1/A;->t:LE1/F;

    .line 22
    .line 23
    iget v1, v0, LE1/F;->l:I

    .line 24
    .line 25
    iput v1, v2, LE1/h0;->e:I

    .line 26
    .line 27
    iget v0, v0, LE1/F;->k:I

    .line 28
    .line 29
    iput v0, v2, LE1/h0;->f:I

    .line 30
    .line 31
    invoke-virtual {p0}, LE1/A;->g()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, LE1/A;->t:LE1/F;

    .line 39
    .line 40
    invoke-virtual {v0}, LE1/F;->a()LE1/n;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v3, p0, LE1/A;->f:LE1/f;

    .line 45
    .line 46
    if-ne v0, v3, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, LE1/A;->u:LE1/m;

    .line 49
    .line 50
    sget v3, LE1/f;->r:I

    .line 51
    .line 52
    instance-of v3, v0, LE1/b;

    .line 53
    .line 54
    if-nez v3, :cond_0

    .line 55
    .line 56
    :goto_0
    move-object v0, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    check-cast v0, LE1/b;

    .line 59
    .line 60
    iget-object v0, v0, LE1/b;->g:Landroid/media/MediaRouter2$RoutingController;

    .line 61
    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v0}, LB0/s;->A(Landroid/media/MediaRouter2$RoutingController;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_1
    iput-object v0, v2, LE1/h0;->a:Ljava/lang/Object;

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iput-object v1, v2, LE1/h0;->a:Ljava/lang/Object;

    .line 73
    .line 74
    :goto_2
    iget-object v0, p0, LE1/A;->k:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const/4 v4, 0x0

    .line 81
    if-gtz v3, :cond_8

    .line 82
    .line 83
    iget-object v0, p0, LE1/A;->D:LE1/y;

    .line 84
    .line 85
    if-eqz v0, :cond_a

    .line 86
    .line 87
    iget-object v1, p0, LE1/A;->t:LE1/F;

    .line 88
    .line 89
    iget-object v3, p0, LE1/A;->r:LE1/F;

    .line 90
    .line 91
    if-eqz v3, :cond_7

    .line 92
    .line 93
    if-eq v1, v3, :cond_6

    .line 94
    .line 95
    iget-object v3, p0, LE1/A;->s:LE1/F;

    .line 96
    .line 97
    if-ne v1, v3, :cond_3

    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_3
    iget v1, v2, LE1/h0;->d:I

    .line 101
    .line 102
    const/4 v3, 0x1

    .line 103
    if-ne v1, v3, :cond_4

    .line 104
    .line 105
    const/4 v4, 0x2

    .line 106
    const/4 v7, 0x2

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    const/4 v7, 0x0

    .line 109
    :goto_3
    iget v8, v2, LE1/h0;->c:I

    .line 110
    .line 111
    iget v9, v2, LE1/h0;->b:I

    .line 112
    .line 113
    iget-object v1, v2, LE1/h0;->a:Ljava/lang/Object;

    .line 114
    .line 115
    move-object v10, v1

    .line 116
    check-cast v10, Ljava/lang/String;

    .line 117
    .line 118
    iget-object v1, v0, LE1/y;->a:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 119
    .line 120
    if-eqz v1, :cond_a

    .line 121
    .line 122
    iget-object v2, v0, LE1/y;->b:LE1/x;

    .line 123
    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    if-nez v7, :cond_5

    .line 127
    .line 128
    if-nez v8, :cond_5

    .line 129
    .line 130
    iput v9, v2, Lj0/l;->d:I

    .line 131
    .line 132
    invoke-virtual {v2}, Lj0/l;->a()Landroid/media/VolumeProvider;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {v0, v9}, Lj0/j;->a(Landroid/media/VolumeProvider;I)V

    .line 137
    .line 138
    .line 139
    iget-object v0, v2, Lj0/l;->e:Lj0/k;

    .line 140
    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    invoke-virtual {v0, v2}, Lj0/k;->onVolumeChanged(Lj0/l;)V

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_5
    new-instance v2, LE1/x;

    .line 148
    .line 149
    move-object v5, v2

    .line 150
    move-object v6, v0

    .line 151
    invoke-direct/range {v5 .. v10}, LE1/x;-><init>(LE1/y;IIILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iput-object v2, v0, LE1/y;->b:LE1/x;

    .line 155
    .line 156
    invoke-virtual {v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToRemote(Lj0/l;)V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_6
    :goto_4
    invoke-virtual {v0}, LE1/y;->a()V

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    const-string v1, "There is no default route.  The media router has not yet been fully initialized."

    .line 167
    .line 168
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw v0

    .line 172
    :cond_8
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, LE1/z;

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    throw v1

    .line 182
    :cond_9
    iget-object v0, p0, LE1/A;->D:LE1/y;

    .line 183
    .line 184
    if-eqz v0, :cond_a

    .line 185
    .line 186
    invoke-virtual {v0}, LE1/y;->a()V

    .line 187
    .line 188
    .line 189
    :cond_a
    :goto_5
    return-void
.end method

.method public final o(LE1/E;LE1/o;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, LE1/E;->e:LE1/o;

    .line 8
    .line 9
    if-eq v3, v2, :cond_13

    .line 10
    .line 11
    iput-object v2, v1, LE1/E;->e:LE1/o;

    .line 12
    .line 13
    iget-object v3, v0, LE1/A;->h:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v4, v1, LE1/E;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    const-string v7, "MediaRouter"

    .line 18
    .line 19
    iget-object v8, v0, LE1/A;->n:LE1/v;

    .line 20
    .line 21
    if-eqz v2, :cond_10

    .line 22
    .line 23
    iget-object v9, v2, LE1/o;->a:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v10

    .line 29
    const/4 v11, 0x0

    .line 30
    :goto_0
    if-ge v11, v10, :cond_2

    .line 31
    .line 32
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v12

    .line 36
    check-cast v12, LE1/h;

    .line 37
    .line 38
    if-eqz v12, :cond_1

    .line 39
    .line 40
    invoke-virtual {v12}, LE1/h;->e()Z

    .line 41
    .line 42
    .line 43
    move-result v12

    .line 44
    if-nez v12, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v11, v11, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    iget-object v10, v0, LE1/A;->c:LE1/o0;

    .line 51
    .line 52
    iget-object v10, v10, LE1/n;->g:LE1/o;

    .line 53
    .line 54
    if-ne v2, v10, :cond_10

    .line 55
    .line 56
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .line 60
    .line 61
    new-instance v10, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v12, 0x0

    .line 72
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v13

    .line 76
    if-eqz v13, :cond_c

    .line 77
    .line 78
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    check-cast v13, LE1/h;

    .line 83
    .line 84
    if-eqz v13, :cond_b

    .line 85
    .line 86
    invoke-virtual {v13}, LE1/h;->e()Z

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    if-nez v15, :cond_3

    .line 91
    .line 92
    goto/16 :goto_7

    .line 93
    .line 94
    :cond_3
    invoke-virtual {v13}, LE1/h;->d()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v15

    .line 98
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    const/4 v6, 0x0

    .line 103
    :goto_3
    if-ge v6, v5, :cond_5

    .line 104
    .line 105
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v16

    .line 109
    move-object/from16 v14, v16

    .line 110
    .line 111
    check-cast v14, LE1/F;

    .line 112
    .line 113
    iget-object v14, v14, LE1/F;->b:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v14

    .line 119
    if-eqz v14, :cond_4

    .line 120
    .line 121
    goto :goto_4

    .line 122
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 123
    .line 124
    goto :goto_3

    .line 125
    :cond_5
    const/4 v6, -0x1

    .line 126
    :goto_4
    if-gez v6, :cond_7

    .line 127
    .line 128
    invoke-virtual {v0, v1, v15}, LE1/A;->b(LE1/E;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    new-instance v6, LE1/F;

    .line 133
    .line 134
    invoke-direct {v6, v1, v15, v5}, LE1/F;-><init>(LE1/E;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    add-int/lit8 v5, v11, 0x1

    .line 138
    .line 139
    invoke-virtual {v4, v11, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    invoke-virtual {v13}, LE1/h;->c()Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 150
    .line 151
    .line 152
    move-result v11

    .line 153
    if-lez v11, :cond_6

    .line 154
    .line 155
    new-instance v11, LM/b;

    .line 156
    .line 157
    invoke-direct {v11, v6, v13}, LM/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_6
    invoke-virtual {v6, v13}, LE1/F;->f(LE1/h;)I

    .line 165
    .line 166
    .line 167
    sget-object v11, LE1/H;->c:LE1/A;

    .line 168
    .line 169
    const/16 v11, 0x101

    .line 170
    .line 171
    invoke-virtual {v8, v11, v6}, LE1/v;->b(ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :goto_5
    move v11, v5

    .line 175
    goto :goto_2

    .line 176
    :cond_7
    if-ge v6, v11, :cond_8

    .line 177
    .line 178
    new-instance v5, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v6, "Ignoring route descriptor with duplicate id: "

    .line 181
    .line 182
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_8
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v5

    .line 200
    check-cast v5, LE1/F;

    .line 201
    .line 202
    add-int/lit8 v14, v11, 0x1

    .line 203
    .line 204
    invoke-static {v4, v6, v11}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v13}, LE1/h;->c()Ljava/util/ArrayList;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-lez v6, :cond_9

    .line 216
    .line 217
    new-instance v6, LM/b;

    .line 218
    .line 219
    invoke-direct {v6, v5, v13}, LM/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    goto :goto_6

    .line 226
    :cond_9
    invoke-virtual {v0, v5, v13}, LE1/A;->p(LE1/F;LE1/h;)I

    .line 227
    .line 228
    .line 229
    move-result v6

    .line 230
    if-eqz v6, :cond_a

    .line 231
    .line 232
    iget-object v6, v0, LE1/A;->t:LE1/F;

    .line 233
    .line 234
    if-ne v5, v6, :cond_a

    .line 235
    .line 236
    move v11, v14

    .line 237
    const/4 v12, 0x1

    .line 238
    goto/16 :goto_2

    .line 239
    .line 240
    :cond_a
    :goto_6
    move v11, v14

    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :cond_b
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    const-string v6, "Ignoring invalid system route descriptor: "

    .line 246
    .line 247
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    goto/16 :goto_2

    .line 261
    .line 262
    :cond_c
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-eqz v5, :cond_d

    .line 271
    .line 272
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v5

    .line 276
    check-cast v5, LM/b;

    .line 277
    .line 278
    iget-object v6, v5, LM/b;->a:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v6, LE1/F;

    .line 281
    .line 282
    iget-object v5, v5, LM/b;->b:Ljava/lang/Object;

    .line 283
    .line 284
    check-cast v5, LE1/h;

    .line 285
    .line 286
    invoke-virtual {v6, v5}, LE1/F;->f(LE1/h;)I

    .line 287
    .line 288
    .line 289
    sget-object v5, LE1/H;->c:LE1/A;

    .line 290
    .line 291
    const/16 v5, 0x101

    .line 292
    .line 293
    invoke-virtual {v8, v5, v6}, LE1/v;->b(ILjava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    goto :goto_8

    .line 297
    :cond_d
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    move v5, v12

    .line 302
    :cond_e
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    if-eqz v6, :cond_f

    .line 307
    .line 308
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    check-cast v6, LM/b;

    .line 313
    .line 314
    iget-object v7, v6, LM/b;->a:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast v7, LE1/F;

    .line 317
    .line 318
    iget-object v6, v6, LM/b;->b:Ljava/lang/Object;

    .line 319
    .line 320
    check-cast v6, LE1/h;

    .line 321
    .line 322
    invoke-virtual {v0, v7, v6}, LE1/A;->p(LE1/F;LE1/h;)I

    .line 323
    .line 324
    .line 325
    move-result v6

    .line 326
    if-eqz v6, :cond_e

    .line 327
    .line 328
    iget-object v6, v0, LE1/A;->t:LE1/F;

    .line 329
    .line 330
    if-ne v7, v6, :cond_e

    .line 331
    .line 332
    const/4 v5, 0x1

    .line 333
    goto :goto_9

    .line 334
    :cond_f
    move v2, v5

    .line 335
    move v5, v11

    .line 336
    goto :goto_a

    .line 337
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string v6, "Ignoring invalid provider descriptor: "

    .line 340
    .line 341
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    const/4 v2, 0x0

    .line 355
    const/4 v5, 0x0

    .line 356
    :goto_a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 357
    .line 358
    .line 359
    move-result v6

    .line 360
    const/4 v7, 0x1

    .line 361
    sub-int/2addr v6, v7

    .line 362
    :goto_b
    if-lt v6, v5, :cond_11

    .line 363
    .line 364
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    check-cast v7, LE1/F;

    .line 369
    .line 370
    const/4 v9, 0x0

    .line 371
    invoke-virtual {v7, v9}, LE1/F;->f(LE1/h;)I

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    add-int/lit8 v6, v6, -0x1

    .line 378
    .line 379
    goto :goto_b

    .line 380
    :cond_11
    invoke-virtual {v0, v2}, LE1/A;->q(Z)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    const/4 v3, 0x1

    .line 388
    sub-int/2addr v2, v3

    .line 389
    :goto_c
    if-lt v2, v5, :cond_12

    .line 390
    .line 391
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v3

    .line 395
    check-cast v3, LE1/F;

    .line 396
    .line 397
    sget-object v6, LE1/H;->c:LE1/A;

    .line 398
    .line 399
    const/16 v6, 0x102

    .line 400
    .line 401
    invoke-virtual {v8, v6, v3}, LE1/v;->b(ILjava/lang/Object;)V

    .line 402
    .line 403
    .line 404
    add-int/lit8 v2, v2, -0x1

    .line 405
    .line 406
    goto :goto_c

    .line 407
    :cond_12
    sget-object v2, LE1/H;->c:LE1/A;

    .line 408
    .line 409
    const/16 v2, 0x203

    .line 410
    .line 411
    invoke-virtual {v8, v2, v1}, LE1/v;->b(ILjava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    :cond_13
    return-void
.end method

.method public final p(LE1/F;LE1/h;)I
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, LE1/F;->f(LE1/h;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_2

    .line 6
    .line 7
    and-int/lit8 v0, p2, 0x1

    .line 8
    .line 9
    iget-object v1, p0, LE1/A;->n:LE1/v;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v0, LE1/H;->c:LE1/A;

    .line 14
    .line 15
    const/16 v0, 0x103

    .line 16
    .line 17
    invoke-virtual {v1, v0, p1}, LE1/v;->b(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    and-int/lit8 v0, p2, 0x2

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object v0, LE1/H;->c:LE1/A;

    .line 25
    .line 26
    const/16 v0, 0x104

    .line 27
    .line 28
    invoke-virtual {v1, v0, p1}, LE1/v;->b(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    and-int/lit8 v0, p2, 0x4

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    sget-object v0, LE1/H;->c:LE1/A;

    .line 36
    .line 37
    const/16 v0, 0x105

    .line 38
    .line 39
    invoke-virtual {v1, v0, p1}, LE1/v;->b(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return p2
.end method

.method public final q(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, LE1/A;->r:LE1/F;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "MediaRouter"

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, LE1/F;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "Clearing the default route because it is no longer selectable: "

    .line 17
    .line 18
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, LE1/A;->r:LE1/F;

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, LE1/A;->r:LE1/F;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, LE1/A;->r:LE1/F;

    .line 36
    .line 37
    iget-object v3, p0, LE1/A;->h:Ljava/util/ArrayList;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, LE1/F;

    .line 62
    .line 63
    invoke-virtual {v4}, LE1/F;->a()LE1/n;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    iget-object v6, p0, LE1/A;->c:LE1/o0;

    .line 68
    .line 69
    if-ne v5, v6, :cond_1

    .line 70
    .line 71
    iget-object v5, v4, LE1/F;->b:Ljava/lang/String;

    .line 72
    .line 73
    const-string v6, "DEFAULT_ROUTE"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_1

    .line 80
    .line 81
    invoke-virtual {v4}, LE1/F;->d()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_1

    .line 86
    .line 87
    iput-object v4, p0, LE1/A;->r:LE1/F;

    .line 88
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string v4, "Found default route: "

    .line 92
    .line 93
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, LE1/A;->r:LE1/F;

    .line 97
    .line 98
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v0, p0, LE1/A;->s:LE1/F;

    .line 109
    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    invoke-virtual {v0}, LE1/F;->d()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v4, "Clearing the bluetooth route because it is no longer selectable: "

    .line 121
    .line 122
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v4, p0, LE1/A;->s:LE1/F;

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    iput-object v1, p0, LE1/A;->s:LE1/F;

    .line 138
    .line 139
    :cond_3
    iget-object v0, p0, LE1/A;->s:LE1/F;

    .line 140
    .line 141
    if-nez v0, :cond_5

    .line 142
    .line 143
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_5

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_5

    .line 158
    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, LE1/F;

    .line 164
    .line 165
    invoke-virtual {v1}, LE1/F;->a()LE1/n;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    iget-object v4, p0, LE1/A;->c:LE1/o0;

    .line 170
    .line 171
    if-ne v3, v4, :cond_4

    .line 172
    .line 173
    const-string v3, "android.media.intent.category.LIVE_AUDIO"

    .line 174
    .line 175
    invoke-virtual {v1, v3}, LE1/F;->i(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-eqz v3, :cond_4

    .line 180
    .line 181
    const-string v3, "android.media.intent.category.LIVE_VIDEO"

    .line 182
    .line 183
    invoke-virtual {v1, v3}, LE1/F;->i(Ljava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-nez v3, :cond_4

    .line 188
    .line 189
    invoke-virtual {v1}, LE1/F;->d()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_4

    .line 194
    .line 195
    iput-object v1, p0, LE1/A;->s:LE1/F;

    .line 196
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v1, "Found bluetooth route: "

    .line 200
    .line 201
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, p0, LE1/A;->s:LE1/F;

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_5
    iget-object v0, p0, LE1/A;->t:LE1/F;

    .line 217
    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    iget-boolean v0, v0, LE1/F;->g:Z

    .line 221
    .line 222
    if-nez v0, :cond_6

    .line 223
    .line 224
    goto :goto_0

    .line 225
    :cond_6
    if-eqz p1, :cond_8

    .line 226
    .line 227
    invoke-virtual {p0}, LE1/A;->h()V

    .line 228
    .line 229
    .line 230
    invoke-virtual {p0}, LE1/A;->n()V

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_7
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v0, "Unselecting the current route because it is no longer selectable: "

    .line 237
    .line 238
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iget-object v0, p0, LE1/A;->t:LE1/F;

    .line 242
    .line 243
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, LE1/A;->c()LE1/F;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, p1, v0}, LE1/A;->l(LE1/F;I)V

    .line 259
    .line 260
    .line 261
    :cond_8
    :goto_1
    return-void
.end method
