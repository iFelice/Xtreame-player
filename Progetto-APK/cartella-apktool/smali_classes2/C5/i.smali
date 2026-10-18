.class public final LC5/i;
.super LC5/j;
.source "SourceFile"


# static fields
.field public static final b:[LC5/m;


# instance fields
.field public final a:[LC5/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [LC5/m;

    .line 3
    .line 4
    sput-object v0, LC5/i;->b:[LC5/m;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lq5/c;->I:Lq5/c;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/Collection;

    .line 15
    .line 16
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p1, :cond_4

    .line 23
    .line 24
    sget-object v2, Lq5/a;->N:Lq5/a;

    .line 25
    .line 26
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    new-instance v2, LC5/e;

    .line 33
    .line 34
    invoke-direct {v2}, LC5/e;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sget-object v2, Lq5/a;->U:Lq5/a;

    .line 42
    .line 43
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    new-instance v2, LC5/f;

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-direct {v2, v3}, LC5/f;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_2
    :goto_1
    sget-object v2, Lq5/a;->M:Lq5/a;

    .line 59
    .line 60
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    new-instance v2, LC5/f;

    .line 67
    .line 68
    invoke-direct {v2, v1}, LC5/f;-><init>(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    :cond_3
    sget-object v2, Lq5/a;->V:Lq5/a;

    .line 75
    .line 76
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    new-instance p1, LC5/n;

    .line 83
    .line 84
    invoke-direct {p1}, LC5/n;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    new-instance p1, LC5/e;

    .line 97
    .line 98
    invoke-direct {p1}, LC5/e;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance p1, LC5/f;

    .line 105
    .line 106
    invoke-direct {p1, v1}, LC5/f;-><init>(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    new-instance p1, LC5/n;

    .line 113
    .line 114
    invoke-direct {p1}, LC5/n;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    :cond_5
    sget-object p1, LC5/i;->b:[LC5/m;

    .line 121
    .line 122
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    check-cast p1, [LC5/m;

    .line 127
    .line 128
    iput-object p1, p0, LC5/i;->a:[LC5/m;

    .line 129
    .line 130
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, LC5/i;->a:[LC5/m;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public final d(ILw5/a;Ljava/util/Map;)Lq5/m;
    .locals 11

    .line 1
    invoke-static {p2}, LC5/m;->o(Lw5/a;)[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, LC5/i;->a:[LC5/m;

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v2, :cond_5

    .line 11
    .line 12
    aget-object v5, v1, v4

    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v5, p1, p2, v0, p3}, LC5/m;->m(ILw5/a;[ILjava/util/Map;)Lq5/m;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v6, v5, Lq5/m;->d:Lq5/a;

    .line 19
    .line 20
    sget-object v7, Lq5/a;->N:Lq5/a;
    :try_end_0
    .catch Lq5/l; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    iget-object v9, v5, Lq5/m;->a:Ljava/lang/String;

    .line 24
    .line 25
    if-ne v6, v7, :cond_0

    .line 26
    .line 27
    :try_start_1
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    const/16 v7, 0x30

    .line 32
    .line 33
    if-ne v6, v7, :cond_0

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v6, 0x0

    .line 38
    :goto_1
    if-nez p3, :cond_1

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    sget-object v7, Lq5/c;->I:Lq5/c;

    .line 43
    .line 44
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Ljava/util/Collection;
    :try_end_1
    .catch Lq5/l; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .line 50
    :goto_2
    sget-object v10, Lq5/a;->U:Lq5/a;

    .line 51
    .line 52
    if-eqz v7, :cond_3

    .line 53
    .line 54
    :try_start_2
    invoke-interface {v7, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-eqz v7, :cond_2

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_2
    const/4 v7, 0x0

    .line 62
    goto :goto_4

    .line 63
    :cond_3
    :goto_3
    const/4 v7, 0x1

    .line 64
    :goto_4
    if-eqz v6, :cond_4

    .line 65
    .line 66
    if-eqz v7, :cond_4

    .line 67
    .line 68
    new-instance v6, Lq5/m;

    .line 69
    .line 70
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    iget-object v8, v5, Lq5/m;->b:[B

    .line 75
    .line 76
    iget-object v9, v5, Lq5/m;->c:[Lq5/o;

    .line 77
    .line 78
    invoke-direct {v6, v7, v8, v9, v10}, Lq5/m;-><init>(Ljava/lang/String;[B[Lq5/o;Lq5/a;)V

    .line 79
    .line 80
    .line 81
    iget-object v5, v5, Lq5/m;->e:Ljava/util/Map;

    .line 82
    .line 83
    invoke-virtual {v6, v5}, Lq5/m;->a(Ljava/util/Map;)V
    :try_end_2
    .catch Lq5/l; {:try_start_2 .. :try_end_2} :catch_0

    .line 84
    .line 85
    .line 86
    return-object v6

    .line 87
    :cond_4
    return-object v5

    .line 88
    :catch_0
    add-int/lit8 v4, v4, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    sget-object p1, Lq5/i;->I:Lq5/i;

    .line 92
    .line 93
    throw p1
.end method
