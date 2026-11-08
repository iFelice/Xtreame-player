.class public final Lw1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:J

.field public final e:J

.field public final f:Lw1/g;

.field public final g:[Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lw1/c;

.field public final k:Ljava/util/HashMap;

.field public final l:Ljava/util/HashMap;

.field public m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLw1/g;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw1/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lw1/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p10, p0, Lw1/c;->i:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p7, p0, Lw1/c;->f:Lw1/g;

    .line 11
    .line 12
    iput-object p8, p0, Lw1/c;->g:[Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iput-boolean p1, p0, Lw1/c;->c:Z

    .line 20
    .line 21
    iput-wide p3, p0, Lw1/c;->d:J

    .line 22
    .line 23
    iput-wide p5, p0, Lw1/c;->e:J

    .line 24
    .line 25
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iput-object p9, p0, Lw1/c;->h:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p11, p0, Lw1/c;->j:Lw1/c;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lw1/c;->k:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lw1/c;->l:Ljava/util/HashMap;

    .line 45
    .line 46
    return-void
.end method

.method public static a(Ljava/lang/String;)Lw1/c;
    .locals 13

    .line 1
    new-instance v12, Lw1/c;

    .line 2
    .line 3
    const-string v0, "\r\n"

    .line 4
    .line 5
    const-string v1, "\n"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, " *\n *"

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v0, " "

    .line 18
    .line 19
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v1, "[ \t\\x0B\u000c\r]+"

    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    const/4 v8, 0x0

    .line 44
    const-string v9, ""

    .line 45
    .line 46
    move-object v0, v12

    .line 47
    invoke-direct/range {v0 .. v11}, Lw1/c;-><init>(Ljava/lang/String;Ljava/lang/String;JJLw1/g;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw1/c;)V

    .line 48
    .line 49
    .line 50
    return-object v12
.end method

.method public static e(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 1
    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lo0/a;

    .line 8
    .line 9
    invoke-direct {v0}, Lo0/a;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lo0/a;->a:Ljava/lang/CharSequence;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lo0/a;->b:Landroid/graphics/Bitmap;

    .line 21
    .line 22
    invoke-virtual {p1, p0, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lo0/a;

    .line 30
    .line 31
    iget-object p0, p0, Lo0/a;->a:Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 37
    .line 38
    return-object p0
.end method


# virtual methods
.method public final b(I)Lw1/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/c;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lw1/c;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public final c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw1/c;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public final d(Ljava/util/TreeSet;Z)V
    .locals 6

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    iget-object v1, p0, Lw1/c;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v2, "div"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lw1/c;->i:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    :cond_0
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    iget-wide v3, p0, Lw1/c;->d:J

    .line 31
    .line 32
    cmp-long v5, v3, v1

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {p1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-wide v3, p0, Lw1/c;->e:J

    .line 44
    .line 45
    cmp-long v5, v3, v1

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Lw1/c;->m:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-nez v1, :cond_3

    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    :goto_0
    iget-object v3, p0, Lw1/c;->m:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-ge v2, v3, :cond_6

    .line 70
    .line 71
    iget-object v3, p0, Lw1/c;->m:Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lw1/c;

    .line 78
    .line 79
    if-nez p2, :cond_5

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    const/4 v4, 0x0

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    :goto_1
    const/4 v4, 0x1

    .line 87
    :goto_2
    invoke-virtual {v3, p1, v4}, Lw1/c;->d(Ljava/util/TreeSet;Z)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_6
    return-void
.end method

.method public final f(J)Z
    .locals 7

    .line 1
    iget-wide v0, p0, Lw1/c;->e:J

    .line 2
    .line 3
    iget-wide v2, p0, Lw1/c;->d:J

    .line 4
    .line 5
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v6, v2, v4

    .line 11
    .line 12
    if-nez v6, :cond_0

    .line 13
    .line 14
    cmp-long v6, v0, v4

    .line 15
    .line 16
    if-eqz v6, :cond_3

    .line 17
    .line 18
    :cond_0
    cmp-long v6, v2, p1

    .line 19
    .line 20
    if-gtz v6, :cond_1

    .line 21
    .line 22
    cmp-long v6, v0, v4

    .line 23
    .line 24
    if-eqz v6, :cond_3

    .line 25
    .line 26
    :cond_1
    cmp-long v6, v2, v4

    .line 27
    .line 28
    if-nez v6, :cond_2

    .line 29
    .line 30
    cmp-long v4, p1, v0

    .line 31
    .line 32
    if-ltz v4, :cond_3

    .line 33
    .line 34
    :cond_2
    cmp-long v4, v2, p1

    .line 35
    .line 36
    if-gtz v4, :cond_4

    .line 37
    .line 38
    cmp-long v2, p1, v0

    .line 39
    .line 40
    if-gez v2, :cond_4

    .line 41
    .line 42
    :cond_3
    const/4 p1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_4
    const/4 p1, 0x0

    .line 45
    :goto_0
    return p1
.end method

.method public final g(JLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lw1/c;->h:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object p3, v1

    .line 13
    :goto_0
    invoke-virtual {p0, p1, p2}, Lw1/c;->f(J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, "div"

    .line 20
    .line 21
    iget-object v1, p0, Lw1/c;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lw1/c;->i:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance p1, Landroid/util/Pair;

    .line 34
    .line 35
    invoke-direct {p1, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    .line 43
    :goto_1
    invoke-virtual {p0}, Lw1/c;->c()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ge v0, v1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lw1/c;->b(I)Lw1/c;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, p1, p2, p3, p4}, Lw1/c;->g(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    return-void
.end method

.method public final h(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p2}, Lw1/c;->f(J)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-string v1, ""

    .line 13
    .line 14
    iget-object v2, v0, Lw1/c;->h:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object/from16 v9, p5

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object v9, v2

    .line 26
    :goto_0
    iget-object v1, v0, Lw1/c;->l:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_32

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/util/Map$Entry;

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/String;

    .line 53
    .line 54
    iget-object v5, v0, Lw1/c;->k:Ljava/util/HashMap;

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    if-eqz v6, :cond_2

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    check-cast v5, Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    const/4 v5, 0x0

    .line 74
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eq v5, v2, :cond_2f

    .line 85
    .line 86
    move-object/from16 v10, p6

    .line 87
    .line 88
    invoke-virtual {v10, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    check-cast v4, Lo0/a;

    .line 93
    .line 94
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-object/from16 v11, p4

    .line 98
    .line 99
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    check-cast v6, Lw1/f;

    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iget-object v7, v0, Lw1/c;->f:Lw1/g;

    .line 109
    .line 110
    iget-object v12, v0, Lw1/c;->g:[Ljava/lang/String;

    .line 111
    .line 112
    invoke-static {v7, v12, v8}, LQ3/b;->v(Lw1/g;[Ljava/lang/String;Ljava/util/Map;)Lw1/g;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    iget-object v12, v4, Lo0/a;->a:Ljava/lang/CharSequence;

    .line 117
    .line 118
    check-cast v12, Landroid/text/SpannableStringBuilder;

    .line 119
    .line 120
    const/4 v13, 0x0

    .line 121
    if-nez v12, :cond_3

    .line 122
    .line 123
    new-instance v12, Landroid/text/SpannableStringBuilder;

    .line 124
    .line 125
    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v12, v4, Lo0/a;->a:Ljava/lang/CharSequence;

    .line 129
    .line 130
    iput-object v13, v4, Lo0/a;->b:Landroid/graphics/Bitmap;

    .line 131
    .line 132
    :cond_3
    if-eqz v7, :cond_30

    .line 133
    .line 134
    iget v14, v7, Lw1/g;->h:I

    .line 135
    .line 136
    const/4 v13, -0x1

    .line 137
    const/4 v3, 0x1

    .line 138
    if-ne v14, v13, :cond_4

    .line 139
    .line 140
    iget v15, v7, Lw1/g;->i:I

    .line 141
    .line 142
    if-ne v15, v13, :cond_4

    .line 143
    .line 144
    const/4 v14, -0x1

    .line 145
    goto :goto_5

    .line 146
    :cond_4
    if-ne v14, v3, :cond_5

    .line 147
    .line 148
    const/4 v14, 0x1

    .line 149
    goto :goto_3

    .line 150
    :cond_5
    const/4 v14, 0x0

    .line 151
    :goto_3
    iget v15, v7, Lw1/g;->i:I

    .line 152
    .line 153
    if-ne v15, v3, :cond_6

    .line 154
    .line 155
    const/4 v15, 0x2

    .line 156
    goto :goto_4

    .line 157
    :cond_6
    const/4 v15, 0x0

    .line 158
    :goto_4
    or-int/2addr v14, v15

    .line 159
    :goto_5
    if-eq v14, v13, :cond_b

    .line 160
    .line 161
    new-instance v14, Landroid/text/style/StyleSpan;

    .line 162
    .line 163
    iget v15, v7, Lw1/g;->h:I

    .line 164
    .line 165
    if-ne v15, v13, :cond_8

    .line 166
    .line 167
    iget v3, v7, Lw1/g;->i:I

    .line 168
    .line 169
    if-ne v3, v13, :cond_7

    .line 170
    .line 171
    const/4 v3, 0x1

    .line 172
    const/4 v15, -0x1

    .line 173
    goto :goto_8

    .line 174
    :cond_7
    const/4 v3, 0x1

    .line 175
    :cond_8
    if-ne v15, v3, :cond_9

    .line 176
    .line 177
    const/16 v17, 0x1

    .line 178
    .line 179
    goto :goto_6

    .line 180
    :cond_9
    const/16 v17, 0x0

    .line 181
    .line 182
    :goto_6
    iget v15, v7, Lw1/g;->i:I

    .line 183
    .line 184
    if-ne v15, v3, :cond_a

    .line 185
    .line 186
    const/4 v15, 0x2

    .line 187
    goto :goto_7

    .line 188
    :cond_a
    const/4 v15, 0x0

    .line 189
    :goto_7
    or-int v15, v17, v15

    .line 190
    .line 191
    :goto_8
    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 192
    .line 193
    .line 194
    const/16 v15, 0x21

    .line 195
    .line 196
    invoke-interface {v12, v14, v5, v2, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 197
    .line 198
    .line 199
    goto :goto_9

    .line 200
    :cond_b
    const/16 v15, 0x21

    .line 201
    .line 202
    :goto_9
    iget v14, v7, Lw1/g;->f:I

    .line 203
    .line 204
    if-ne v14, v3, :cond_c

    .line 205
    .line 206
    new-instance v14, Landroid/text/style/StrikethroughSpan;

    .line 207
    .line 208
    invoke-direct {v14}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-interface {v12, v14, v5, v2, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 212
    .line 213
    .line 214
    :cond_c
    iget v14, v7, Lw1/g;->g:I

    .line 215
    .line 216
    if-ne v14, v3, :cond_d

    .line 217
    .line 218
    new-instance v3, Landroid/text/style/UnderlineSpan;

    .line 219
    .line 220
    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-interface {v12, v3, v5, v2, v15}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 224
    .line 225
    .line 226
    :cond_d
    iget-boolean v3, v7, Lw1/g;->c:Z

    .line 227
    .line 228
    if-eqz v3, :cond_f

    .line 229
    .line 230
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 231
    .line 232
    iget-boolean v14, v7, Lw1/g;->c:Z

    .line 233
    .line 234
    if-eqz v14, :cond_e

    .line 235
    .line 236
    iget v14, v7, Lw1/g;->b:I

    .line 237
    .line 238
    invoke-direct {v3, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 239
    .line 240
    .line 241
    invoke-static {v12, v3, v5, v2}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 242
    .line 243
    .line 244
    goto :goto_a

    .line 245
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 246
    .line 247
    const-string v2, "Font color has not been defined."

    .line 248
    .line 249
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw v1

    .line 253
    :cond_f
    :goto_a
    iget-boolean v3, v7, Lw1/g;->e:Z

    .line 254
    .line 255
    if-eqz v3, :cond_11

    .line 256
    .line 257
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    .line 258
    .line 259
    iget-boolean v14, v7, Lw1/g;->e:Z

    .line 260
    .line 261
    if-eqz v14, :cond_10

    .line 262
    .line 263
    iget v14, v7, Lw1/g;->d:I

    .line 264
    .line 265
    invoke-direct {v3, v14}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-static {v12, v3, v5, v2}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 269
    .line 270
    .line 271
    goto :goto_b

    .line 272
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 273
    .line 274
    const-string v2, "Background color has not been defined."

    .line 275
    .line 276
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw v1

    .line 280
    :cond_11
    :goto_b
    iget-object v3, v7, Lw1/g;->a:Ljava/lang/String;

    .line 281
    .line 282
    if-eqz v3, :cond_12

    .line 283
    .line 284
    new-instance v3, Landroid/text/style/TypefaceSpan;

    .line 285
    .line 286
    iget-object v14, v7, Lw1/g;->a:Ljava/lang/String;

    .line 287
    .line 288
    invoke-direct {v3, v14}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v12, v3, v5, v2}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 292
    .line 293
    .line 294
    :cond_12
    iget-object v3, v7, Lw1/g;->r:Lw1/b;

    .line 295
    .line 296
    const/4 v14, 0x3

    .line 297
    if-eqz v3, :cond_17

    .line 298
    .line 299
    iget v15, v3, Lw1/b;->a:I

    .line 300
    .line 301
    if-ne v15, v13, :cond_15

    .line 302
    .line 303
    iget v6, v6, Lw1/f;->j:I

    .line 304
    .line 305
    const/4 v15, 0x2

    .line 306
    if-eq v6, v15, :cond_14

    .line 307
    .line 308
    const/4 v15, 0x1

    .line 309
    if-ne v6, v15, :cond_13

    .line 310
    .line 311
    goto :goto_c

    .line 312
    :cond_13
    const/4 v6, 0x1

    .line 313
    goto :goto_d

    .line 314
    :cond_14
    :goto_c
    const/4 v6, 0x3

    .line 315
    :goto_d
    move v15, v6

    .line 316
    const/4 v6, 0x1

    .line 317
    goto :goto_e

    .line 318
    :cond_15
    iget v6, v3, Lw1/b;->b:I

    .line 319
    .line 320
    :goto_e
    const/4 v13, -0x2

    .line 321
    iget v3, v3, Lw1/b;->c:I

    .line 322
    .line 323
    if-ne v3, v13, :cond_16

    .line 324
    .line 325
    const/4 v3, 0x1

    .line 326
    :cond_16
    new-instance v13, Lo0/h;

    .line 327
    .line 328
    invoke-direct {v13, v15, v6, v3}, Lo0/h;-><init>(III)V

    .line 329
    .line 330
    .line 331
    invoke-static {v12, v13, v5, v2}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 332
    .line 333
    .line 334
    :cond_17
    iget v3, v7, Lw1/g;->m:I

    .line 335
    .line 336
    const/4 v6, 0x2

    .line 337
    if-eq v3, v6, :cond_19

    .line 338
    .line 339
    if-eq v3, v14, :cond_18

    .line 340
    .line 341
    const/4 v6, 0x4

    .line 342
    if-eq v3, v6, :cond_18

    .line 343
    .line 344
    :goto_f
    const/4 v6, 0x0

    .line 345
    goto/16 :goto_17

    .line 346
    .line 347
    :cond_18
    new-instance v3, Lw1/a;

    .line 348
    .line 349
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 350
    .line 351
    .line 352
    const/16 v6, 0x21

    .line 353
    .line 354
    invoke-interface {v12, v3, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 355
    .line 356
    .line 357
    goto :goto_f

    .line 358
    :cond_19
    iget-object v3, v0, Lw1/c;->j:Lw1/c;

    .line 359
    .line 360
    :goto_10
    if-eqz v3, :cond_1b

    .line 361
    .line 362
    iget-object v6, v3, Lw1/c;->f:Lw1/g;

    .line 363
    .line 364
    iget-object v13, v3, Lw1/c;->g:[Ljava/lang/String;

    .line 365
    .line 366
    invoke-static {v6, v13, v8}, LQ3/b;->v(Lw1/g;[Ljava/lang/String;Ljava/util/Map;)Lw1/g;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    if-eqz v6, :cond_1a

    .line 371
    .line 372
    iget v6, v6, Lw1/g;->m:I

    .line 373
    .line 374
    const/4 v13, 0x1

    .line 375
    if-ne v6, v13, :cond_1a

    .line 376
    .line 377
    goto :goto_11

    .line 378
    :cond_1a
    iget-object v3, v3, Lw1/c;->j:Lw1/c;

    .line 379
    .line 380
    goto :goto_10

    .line 381
    :cond_1b
    const/4 v3, 0x0

    .line 382
    :goto_11
    if-nez v3, :cond_1c

    .line 383
    .line 384
    goto :goto_f

    .line 385
    :cond_1c
    new-instance v6, Ljava/util/ArrayDeque;

    .line 386
    .line 387
    invoke-direct {v6}, Ljava/util/ArrayDeque;-><init>()V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v6, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    :goto_12
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 394
    .line 395
    .line 396
    move-result v13

    .line 397
    if-nez v13, :cond_1f

    .line 398
    .line 399
    invoke-virtual {v6}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 400
    .line 401
    .line 402
    move-result-object v13

    .line 403
    check-cast v13, Lw1/c;

    .line 404
    .line 405
    iget-object v15, v13, Lw1/c;->f:Lw1/g;

    .line 406
    .line 407
    iget-object v14, v13, Lw1/c;->g:[Ljava/lang/String;

    .line 408
    .line 409
    invoke-static {v15, v14, v8}, LQ3/b;->v(Lw1/g;[Ljava/lang/String;Ljava/util/Map;)Lw1/g;

    .line 410
    .line 411
    .line 412
    move-result-object v14

    .line 413
    if-eqz v14, :cond_1d

    .line 414
    .line 415
    iget v14, v14, Lw1/g;->m:I

    .line 416
    .line 417
    const/4 v15, 0x3

    .line 418
    if-ne v14, v15, :cond_1d

    .line 419
    .line 420
    goto :goto_14

    .line 421
    :cond_1d
    invoke-virtual {v13}, Lw1/c;->c()I

    .line 422
    .line 423
    .line 424
    move-result v14

    .line 425
    const/4 v15, 0x1

    .line 426
    sub-int/2addr v14, v15

    .line 427
    :goto_13
    if-ltz v14, :cond_1e

    .line 428
    .line 429
    invoke-virtual {v13, v14}, Lw1/c;->b(I)Lw1/c;

    .line 430
    .line 431
    .line 432
    move-result-object v15

    .line 433
    invoke-virtual {v6, v15}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 434
    .line 435
    .line 436
    add-int/lit8 v14, v14, -0x1

    .line 437
    .line 438
    goto :goto_13

    .line 439
    :cond_1e
    const/4 v14, 0x3

    .line 440
    goto :goto_12

    .line 441
    :cond_1f
    const/4 v13, 0x0

    .line 442
    :goto_14
    if-nez v13, :cond_20

    .line 443
    .line 444
    goto :goto_f

    .line 445
    :cond_20
    invoke-virtual {v13}, Lw1/c;->c()I

    .line 446
    .line 447
    .line 448
    move-result v6

    .line 449
    const/4 v14, 0x1

    .line 450
    if-ne v6, v14, :cond_23

    .line 451
    .line 452
    const/4 v6, 0x0

    .line 453
    invoke-virtual {v13, v6}, Lw1/c;->b(I)Lw1/c;

    .line 454
    .line 455
    .line 456
    move-result-object v14

    .line 457
    iget-object v14, v14, Lw1/c;->b:Ljava/lang/String;

    .line 458
    .line 459
    if-eqz v14, :cond_24

    .line 460
    .line 461
    invoke-virtual {v13, v6}, Lw1/c;->b(I)Lw1/c;

    .line 462
    .line 463
    .line 464
    move-result-object v14

    .line 465
    iget-object v14, v14, Lw1/c;->b:Ljava/lang/String;

    .line 466
    .line 467
    sget-object v15, Lp0/M;->a:Ljava/lang/String;

    .line 468
    .line 469
    iget-object v15, v13, Lw1/c;->f:Lw1/g;

    .line 470
    .line 471
    iget-object v13, v13, Lw1/c;->g:[Ljava/lang/String;

    .line 472
    .line 473
    invoke-static {v15, v13, v8}, LQ3/b;->v(Lw1/g;[Ljava/lang/String;Ljava/util/Map;)Lw1/g;

    .line 474
    .line 475
    .line 476
    move-result-object v13

    .line 477
    if-eqz v13, :cond_21

    .line 478
    .line 479
    iget v13, v13, Lw1/g;->n:I

    .line 480
    .line 481
    :goto_15
    const/4 v15, -0x1

    .line 482
    goto :goto_16

    .line 483
    :cond_21
    const/4 v13, -0x1

    .line 484
    goto :goto_15

    .line 485
    :goto_16
    if-ne v13, v15, :cond_22

    .line 486
    .line 487
    iget-object v15, v3, Lw1/c;->f:Lw1/g;

    .line 488
    .line 489
    iget-object v3, v3, Lw1/c;->g:[Ljava/lang/String;

    .line 490
    .line 491
    invoke-static {v15, v3, v8}, LQ3/b;->v(Lw1/g;[Ljava/lang/String;Ljava/util/Map;)Lw1/g;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    if-eqz v3, :cond_22

    .line 496
    .line 497
    iget v13, v3, Lw1/g;->n:I

    .line 498
    .line 499
    :cond_22
    new-instance v3, Lo0/g;

    .line 500
    .line 501
    invoke-direct {v3, v14, v13}, Lo0/g;-><init>(Ljava/lang/String;I)V

    .line 502
    .line 503
    .line 504
    const/16 v13, 0x21

    .line 505
    .line 506
    invoke-interface {v12, v3, v5, v2, v13}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 507
    .line 508
    .line 509
    goto :goto_17

    .line 510
    :cond_23
    const/4 v6, 0x0

    .line 511
    :cond_24
    const-string v3, "TtmlRenderUtil"

    .line 512
    .line 513
    const-string v13, "Skipping rubyText node without exactly one text child."

    .line 514
    .line 515
    invoke-static {v3, v13}, Lp0/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    :goto_17
    iget v3, v7, Lw1/g;->q:I

    .line 519
    .line 520
    const/4 v13, 0x1

    .line 521
    if-ne v3, v13, :cond_25

    .line 522
    .line 523
    new-instance v3, Lo0/e;

    .line 524
    .line 525
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-static {v12, v3, v5, v2}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 529
    .line 530
    .line 531
    :cond_25
    iget v3, v7, Lw1/g;->j:I

    .line 532
    .line 533
    const/high16 v14, 0x42c80000    # 100.0f

    .line 534
    .line 535
    if-eq v3, v13, :cond_2c

    .line 536
    .line 537
    const/4 v13, 0x2

    .line 538
    if-eq v3, v13, :cond_2b

    .line 539
    .line 540
    const/4 v13, 0x3

    .line 541
    if-eq v3, v13, :cond_26

    .line 542
    .line 543
    move-object/from16 v16, v1

    .line 544
    .line 545
    goto/16 :goto_1a

    .line 546
    .line 547
    :cond_26
    iget v3, v7, Lw1/g;->k:F

    .line 548
    .line 549
    div-float/2addr v3, v14

    .line 550
    const-class v13, Landroid/text/style/RelativeSizeSpan;

    .line 551
    .line 552
    invoke-interface {v12, v5, v2, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v13

    .line 556
    check-cast v13, [Landroid/text/style/RelativeSizeSpan;

    .line 557
    .line 558
    array-length v15, v13

    .line 559
    move v6, v3

    .line 560
    const/4 v3, 0x0

    .line 561
    :goto_18
    if-ge v3, v15, :cond_2a

    .line 562
    .line 563
    aget-object v14, v13, v3

    .line 564
    .line 565
    move-object/from16 v16, v1

    .line 566
    .line 567
    invoke-interface {v12, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 568
    .line 569
    .line 570
    move-result v1

    .line 571
    if-gt v1, v5, :cond_27

    .line 572
    .line 573
    invoke-interface {v12, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    if-lt v1, v2, :cond_27

    .line 578
    .line 579
    invoke-virtual {v14}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    mul-float v1, v1, v6

    .line 584
    .line 585
    move v6, v1

    .line 586
    :cond_27
    invoke-interface {v12, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 587
    .line 588
    .line 589
    move-result v1

    .line 590
    if-ne v1, v5, :cond_28

    .line 591
    .line 592
    invoke-interface {v12, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 593
    .line 594
    .line 595
    move-result v1

    .line 596
    if-ne v1, v2, :cond_28

    .line 597
    .line 598
    invoke-interface {v12, v14}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 599
    .line 600
    .line 601
    move-result v1

    .line 602
    const/16 v8, 0x21

    .line 603
    .line 604
    if-ne v1, v8, :cond_29

    .line 605
    .line 606
    invoke-interface {v12, v14}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 607
    .line 608
    .line 609
    goto :goto_19

    .line 610
    :cond_28
    const/16 v8, 0x21

    .line 611
    .line 612
    :cond_29
    :goto_19
    add-int/lit8 v3, v3, 0x1

    .line 613
    .line 614
    move-object/from16 v8, p3

    .line 615
    .line 616
    move-object/from16 v1, v16

    .line 617
    .line 618
    const/high16 v14, 0x42c80000    # 100.0f

    .line 619
    .line 620
    goto :goto_18

    .line 621
    :cond_2a
    move-object/from16 v16, v1

    .line 622
    .line 623
    const/16 v8, 0x21

    .line 624
    .line 625
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    .line 626
    .line 627
    invoke-direct {v1, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 628
    .line 629
    .line 630
    invoke-interface {v12, v1, v5, v2, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 631
    .line 632
    .line 633
    goto :goto_1a

    .line 634
    :cond_2b
    move-object/from16 v16, v1

    .line 635
    .line 636
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    .line 637
    .line 638
    iget v3, v7, Lw1/g;->k:F

    .line 639
    .line 640
    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 641
    .line 642
    .line 643
    invoke-static {v12, v1, v5, v2}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 644
    .line 645
    .line 646
    goto :goto_1a

    .line 647
    :cond_2c
    move-object/from16 v16, v1

    .line 648
    .line 649
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    .line 650
    .line 651
    iget v3, v7, Lw1/g;->k:F

    .line 652
    .line 653
    float-to-int v3, v3

    .line 654
    const/4 v6, 0x1

    .line 655
    invoke-direct {v1, v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 656
    .line 657
    .line 658
    invoke-static {v12, v1, v5, v2}, LZ3/H;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 659
    .line 660
    .line 661
    :goto_1a
    const-string v1, "p"

    .line 662
    .line 663
    iget-object v2, v0, Lw1/c;->a:Ljava/lang/String;

    .line 664
    .line 665
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    if-eqz v1, :cond_31

    .line 670
    .line 671
    iget v1, v7, Lw1/g;->s:F

    .line 672
    .line 673
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 674
    .line 675
    .line 676
    cmpl-float v2, v1, v2

    .line 677
    .line 678
    if-eqz v2, :cond_2d

    .line 679
    .line 680
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 681
    .line 682
    mul-float v1, v1, v2

    .line 683
    .line 684
    const/high16 v2, 0x42c80000    # 100.0f

    .line 685
    .line 686
    div-float/2addr v1, v2

    .line 687
    iput v1, v4, Lo0/a;->q:F

    .line 688
    .line 689
    :cond_2d
    iget-object v1, v7, Lw1/g;->o:Landroid/text/Layout$Alignment;

    .line 690
    .line 691
    if-eqz v1, :cond_2e

    .line 692
    .line 693
    iput-object v1, v4, Lo0/a;->c:Landroid/text/Layout$Alignment;

    .line 694
    .line 695
    :cond_2e
    iget-object v1, v7, Lw1/g;->p:Landroid/text/Layout$Alignment;

    .line 696
    .line 697
    if-eqz v1, :cond_31

    .line 698
    .line 699
    iput-object v1, v4, Lo0/a;->d:Landroid/text/Layout$Alignment;

    .line 700
    .line 701
    goto :goto_1b

    .line 702
    :cond_2f
    move-object/from16 v11, p4

    .line 703
    .line 704
    move-object/from16 v10, p6

    .line 705
    .line 706
    :cond_30
    move-object/from16 v16, v1

    .line 707
    .line 708
    :cond_31
    :goto_1b
    move-object/from16 v8, p3

    .line 709
    .line 710
    move-object/from16 v1, v16

    .line 711
    .line 712
    goto/16 :goto_1

    .line 713
    .line 714
    :cond_32
    move-object/from16 v11, p4

    .line 715
    .line 716
    move-object/from16 v10, p6

    .line 717
    .line 718
    const/4 v6, 0x0

    .line 719
    const/4 v8, 0x0

    .line 720
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Lw1/c;->c()I

    .line 721
    .line 722
    .line 723
    move-result v1

    .line 724
    if-ge v8, v1, :cond_33

    .line 725
    .line 726
    invoke-virtual {v0, v8}, Lw1/c;->b(I)Lw1/c;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    move-wide/from16 v2, p1

    .line 731
    .line 732
    move-object/from16 v4, p3

    .line 733
    .line 734
    move-object/from16 v5, p4

    .line 735
    .line 736
    move-object v6, v9

    .line 737
    move-object/from16 v7, p6

    .line 738
    .line 739
    invoke-virtual/range {v1 .. v7}, Lw1/c;->h(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 740
    .line 741
    .line 742
    add-int/lit8 v8, v8, 0x1

    .line 743
    .line 744
    goto :goto_1c

    .line 745
    :cond_33
    return-void
.end method

.method public final i(JZLjava/lang/String;Ljava/util/TreeMap;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p5

    .line 3
    .line 4
    iget-object v1, v0, Lw1/c;->k:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v8, v0, Lw1/c;->l:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 12
    .line 13
    .line 14
    const-string v2, "metadata"

    .line 15
    .line 16
    iget-object v3, v0, Lw1/c;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string v2, ""

    .line 26
    .line 27
    iget-object v4, v0, Lw1/c;->h:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    move-object/from16 v9, p4

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object v9, v4

    .line 39
    :goto_0
    iget-boolean v2, v0, Lw1/c;->c:Z

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    invoke-static {v9, v7}, Lw1/c;->e(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, v0, Lw1/c;->b:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 55
    .line 56
    .line 57
    goto/16 :goto_7

    .line 58
    .line 59
    :cond_2
    const-string v2, "br"

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/16 v10, 0xa

    .line 66
    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    if-eqz p3, :cond_3

    .line 70
    .line 71
    invoke-static {v9, v7}, Lw1/c;->e(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 76
    .line 77
    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :cond_3
    invoke-virtual/range {p0 .. p2}, Lw1/c;->f(J)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_a

    .line 85
    .line 86
    invoke-virtual/range {p5 .. p5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_4

    .line 99
    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/util/Map$Entry;

    .line 105
    .line 106
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    check-cast v5, Ljava/lang/String;

    .line 111
    .line 112
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    check-cast v4, Lo0/a;

    .line 117
    .line 118
    iget-object v4, v4, Lo0/a;->a:Ljava/lang/CharSequence;

    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    check-cast v4, Ljava/lang/CharSequence;

    .line 124
    .line 125
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    const-string v1, "p"

    .line 138
    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v11

    .line 143
    const/4 v12, 0x0

    .line 144
    const/4 v13, 0x0

    .line 145
    :goto_2
    invoke-virtual {p0}, Lw1/c;->c()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    const/4 v2, 0x1

    .line 150
    if-ge v13, v1, :cond_7

    .line 151
    .line 152
    invoke-virtual {p0, v13}, Lw1/c;->b(I)Lw1/c;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-nez p3, :cond_6

    .line 157
    .line 158
    if-eqz v11, :cond_5

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_5
    const/4 v4, 0x0

    .line 162
    goto :goto_4

    .line 163
    :cond_6
    :goto_3
    const/4 v4, 0x1

    .line 164
    :goto_4
    move-wide v2, p1

    .line 165
    move-object v5, v9

    .line 166
    move-object/from16 v6, p5

    .line 167
    .line 168
    invoke-virtual/range {v1 .. v6}, Lw1/c;->i(JZLjava/lang/String;Ljava/util/TreeMap;)V

    .line 169
    .line 170
    .line 171
    add-int/lit8 v13, v13, 0x1

    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_7
    if-eqz v11, :cond_9

    .line 175
    .line 176
    invoke-static {v9, v7}, Lw1/c;->e(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    sub-int/2addr v3, v2

    .line 185
    :goto_5
    if-ltz v3, :cond_8

    .line 186
    .line 187
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    const/16 v4, 0x20

    .line 192
    .line 193
    if-ne v2, v4, :cond_8

    .line 194
    .line 195
    add-int/lit8 v3, v3, -0x1

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_8
    if-ltz v3, :cond_9

    .line 199
    .line 200
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eq v2, v10, :cond_9

    .line 205
    .line 206
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 207
    .line 208
    .line 209
    :cond_9
    invoke-virtual/range {p5 .. p5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_a

    .line 222
    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Ljava/util/Map$Entry;

    .line 228
    .line 229
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    check-cast v3, Ljava/lang/String;

    .line 234
    .line 235
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    check-cast v2, Lo0/a;

    .line 240
    .line 241
    iget-object v2, v2, Lo0/a;->a:Ljava/lang/CharSequence;

    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    .line 245
    .line 246
    check-cast v2, Ljava/lang/CharSequence;

    .line 247
    .line 248
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :cond_a
    :goto_7
    return-void
.end method
