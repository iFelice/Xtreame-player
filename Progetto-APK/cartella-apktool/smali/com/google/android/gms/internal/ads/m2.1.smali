.class public final Lcom/google/android/gms/internal/ads/m2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:J

.field public final e:J

.field public final f:Lcom/google/android/gms/internal/ads/p2;

.field public final g:[Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lcom/google/android/gms/internal/ads/m2;

.field public final k:Ljava/util/HashMap;

.field public final l:Ljava/util/HashMap;

.field public m:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/p2;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/m2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m2;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/m2;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/m2;->i:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/m2;->f:Lcom/google/android/gms/internal/ads/p2;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/m2;->g:[Ljava/lang/String;

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
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/m2;->c:Z

    .line 20
    .line 21
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/m2;->d:J

    .line 22
    .line 23
    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/m2;->e:J

    .line 24
    .line 25
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/m2;->h:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/m2;->j:Lcom/google/android/gms/internal/ads/m2;

    .line 31
    .line 32
    new-instance p1, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m2;->k:Ljava/util/HashMap;

    .line 38
    .line 39
    new-instance p1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/m2;->l:Ljava/util/HashMap;

    .line 45
    .line 46
    return-void
.end method

.method public static b(Ljava/lang/String;JJLcom/google/android/gms/internal/ads/p2;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/m2;)Lcom/google/android/gms/internal/ads/m2;
    .locals 13

    .line 1
    new-instance v12, Lcom/google/android/gms/internal/ads/m2;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-object v0, v12

    .line 5
    move-object v1, p0

    .line 6
    move-wide v3, p1

    .line 7
    move-wide/from16 v5, p3

    .line 8
    .line 9
    move-object/from16 v7, p5

    .line 10
    .line 11
    move-object/from16 v8, p6

    .line 12
    .line 13
    move-object/from16 v9, p7

    .line 14
    .line 15
    move-object/from16 v10, p8

    .line 16
    .line 17
    move-object/from16 v11, p9

    .line 18
    .line 19
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/m2;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/p2;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/m2;)V

    .line 20
    .line 21
    .line 22
    return-object v12
.end method

.method public static c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/m2;
    .locals 13

    .line 1
    new-instance v12, Lcom/google/android/gms/internal/ads/m2;

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
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const-string v9, ""

    .line 40
    .line 41
    move-object v0, v12

    .line 42
    move-wide v3, v5

    .line 43
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ads/m2;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/android/gms/internal/ads/p2;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/m2;)V

    .line 44
    .line 45
    .line 46
    return-object v12
.end method

.method public static f(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;
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
    new-instance v0, Lcom/google/android/gms/internal/ads/Dj;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/Dj;-><init>()V

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
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Dj;->a:Ljava/lang/CharSequence;

    .line 18
    .line 19
    invoke-virtual {p1, p0, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/google/android/gms/internal/ads/Dj;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/Dj;->a:Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    check-cast p0, Landroid/text/SpannableStringBuilder;

    .line 34
    .line 35
    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m2;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final d(I)Lcom/google/android/gms/internal/ads/m2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m2;->m:Ljava/util/ArrayList;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/m2;

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

.method public final e(J)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/m2;->e:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/m2;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    cmp-long v3, v1, v5

    if-eqz v3, :cond_5

    move-wide v3, v5

    :cond_0
    cmp-long v7, v3, p1

    if-gtz v7, :cond_1

    cmp-long v8, v1, v5

    if-eqz v8, :cond_5

    :cond_1
    cmp-long v8, v3, v5

    if-nez v8, :cond_2

    cmp-long v3, p1, v1

    if-ltz v3, :cond_5

    :cond_2
    const/4 v3, 0x0

    if-gtz v7, :cond_4

    cmp-long v4, p1, v1

    if-gez v4, :cond_3

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method public final g(Ljava/util/TreeSet;Z)V
    .locals 6

    .line 1
    const-string v0, "p"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m2;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m2;->i:Ljava/lang/String;

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
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/m2;->d:J

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
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/m2;->e:J

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
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m2;->m:Ljava/util/ArrayList;

    .line 57
    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/m2;->m:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-ge v2, v3, :cond_5

    .line 69
    .line 70
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/m2;->m:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    check-cast v3, Lcom/google/android/gms/internal/ads/m2;

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    if-nez p2, :cond_4

    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const/4 v4, 0x0

    .line 85
    :cond_4
    :goto_1
    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/internal/ads/m2;->g(Ljava/util/TreeSet;Z)V

    .line 86
    .line 87
    .line 88
    add-int/lit8 v2, v2, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    return-void
.end method

.method public final h(JLjava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/m2;->h:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object p3, v1

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/m2;->e(J)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m2;->a:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "div"

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/m2;->i:Ljava/lang/String;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    new-instance p1, Landroid/util/Pair;

    .line 35
    .line 36
    invoke-direct {p1, p3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/m2;->a()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-ge v1, v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/m2;->d(I)Lcom/google/android/gms/internal/ads/m2;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/m2;->h(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    return-void
.end method

.method public final i(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/TreeMap;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p3

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/m2;->e(J)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1c

    .line 12
    .line 13
    :cond_0
    const-string v1, ""

    .line 14
    .line 15
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/m2;->h:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    move-object v9, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object/from16 v9, p5

    .line 26
    .line 27
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/m2;->l:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_33

    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    .line 49
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/m2;->k:Ljava/util/HashMap;

    .line 56
    .line 57
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_3

    .line 62
    .line 63
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    goto :goto_2

    .line 74
    :cond_3
    const/4 v5, 0x0

    .line 75
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eq v5, v2, :cond_32

    .line 86
    .line 87
    move-object/from16 v10, p6

    .line 88
    .line 89
    invoke-virtual {v10, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/google/android/gms/internal/ads/Dj;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-object/from16 v11, p4

    .line 99
    .line 100
    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Lcom/google/android/gms/internal/ads/o2;

    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 107
    .line 108
    .line 109
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/m2;->f:Lcom/google/android/gms/internal/ads/p2;

    .line 110
    .line 111
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/m2;->g:[Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v7, v12, v8}, Lcom/bumptech/glide/c;->A(Lcom/google/android/gms/internal/ads/p2;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/p2;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    iget-object v12, v4, Lcom/google/android/gms/internal/ads/Dj;->a:Ljava/lang/CharSequence;

    .line 118
    .line 119
    check-cast v12, Landroid/text/SpannableStringBuilder;

    .line 120
    .line 121
    if-nez v12, :cond_4

    .line 122
    .line 123
    new-instance v12, Landroid/text/SpannableStringBuilder;

    .line 124
    .line 125
    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    iput-object v12, v4, Lcom/google/android/gms/internal/ads/Dj;->a:Ljava/lang/CharSequence;

    .line 129
    .line 130
    :cond_4
    if-eqz v7, :cond_2

    .line 131
    .line 132
    iget v13, v7, Lcom/google/android/gms/internal/ads/p2;->h:I

    .line 133
    .line 134
    const/4 v15, -0x1

    .line 135
    const/4 v3, 0x1

    .line 136
    if-ne v13, v15, :cond_6

    .line 137
    .line 138
    iget v14, v7, Lcom/google/android/gms/internal/ads/p2;->i:I

    .line 139
    .line 140
    if-eq v14, v15, :cond_5

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_5
    const/4 v13, -0x1

    .line 144
    goto :goto_6

    .line 145
    :cond_6
    :goto_3
    if-ne v13, v3, :cond_7

    .line 146
    .line 147
    const/4 v13, 0x1

    .line 148
    goto :goto_4

    .line 149
    :cond_7
    const/4 v13, 0x0

    .line 150
    :goto_4
    iget v14, v7, Lcom/google/android/gms/internal/ads/p2;->i:I

    .line 151
    .line 152
    if-ne v14, v3, :cond_8

    .line 153
    .line 154
    const/4 v14, 0x2

    .line 155
    goto :goto_5

    .line 156
    :cond_8
    const/4 v14, 0x0

    .line 157
    :goto_5
    or-int/2addr v13, v14

    .line 158
    :goto_6
    if-eq v13, v15, :cond_d

    .line 159
    .line 160
    new-instance v13, Landroid/text/style/StyleSpan;

    .line 161
    .line 162
    iget v14, v7, Lcom/google/android/gms/internal/ads/p2;->h:I

    .line 163
    .line 164
    if-ne v14, v15, :cond_a

    .line 165
    .line 166
    iget v3, v7, Lcom/google/android/gms/internal/ads/p2;->i:I

    .line 167
    .line 168
    if-eq v3, v15, :cond_9

    .line 169
    .line 170
    const/4 v3, 0x1

    .line 171
    goto :goto_7

    .line 172
    :cond_9
    const/4 v3, 0x1

    .line 173
    const/4 v14, -0x1

    .line 174
    goto :goto_a

    .line 175
    :cond_a
    :goto_7
    if-ne v14, v3, :cond_b

    .line 176
    .line 177
    const/16 v17, 0x1

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_b
    const/16 v17, 0x0

    .line 181
    .line 182
    :goto_8
    iget v14, v7, Lcom/google/android/gms/internal/ads/p2;->i:I

    .line 183
    .line 184
    if-ne v14, v3, :cond_c

    .line 185
    .line 186
    const/4 v14, 0x2

    .line 187
    goto :goto_9

    .line 188
    :cond_c
    const/4 v14, 0x0

    .line 189
    :goto_9
    or-int v14, v17, v14

    .line 190
    .line 191
    :goto_a
    invoke-direct {v13, v14}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 192
    .line 193
    .line 194
    const/16 v14, 0x21

    .line 195
    .line 196
    invoke-interface {v12, v13, v5, v2, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 197
    .line 198
    .line 199
    goto :goto_b

    .line 200
    :cond_d
    const/16 v14, 0x21

    .line 201
    .line 202
    :goto_b
    iget v13, v7, Lcom/google/android/gms/internal/ads/p2;->f:I

    .line 203
    .line 204
    if-ne v13, v3, :cond_e

    .line 205
    .line 206
    new-instance v13, Landroid/text/style/StrikethroughSpan;

    .line 207
    .line 208
    invoke-direct {v13}, Landroid/text/style/StrikethroughSpan;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-interface {v12, v13, v5, v2, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 212
    .line 213
    .line 214
    :cond_e
    iget v13, v7, Lcom/google/android/gms/internal/ads/p2;->g:I

    .line 215
    .line 216
    if-ne v13, v3, :cond_f

    .line 217
    .line 218
    new-instance v3, Landroid/text/style/UnderlineSpan;

    .line 219
    .line 220
    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-interface {v12, v3, v5, v2, v14}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 224
    .line 225
    .line 226
    :cond_f
    iget-boolean v3, v7, Lcom/google/android/gms/internal/ads/p2;->c:Z

    .line 227
    .line 228
    if-eqz v3, :cond_11

    .line 229
    .line 230
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 231
    .line 232
    iget-boolean v13, v7, Lcom/google/android/gms/internal/ads/p2;->c:Z

    .line 233
    .line 234
    if-eqz v13, :cond_10

    .line 235
    .line 236
    iget v13, v7, Lcom/google/android/gms/internal/ads/p2;->b:I

    .line 237
    .line 238
    invoke-direct {v3, v13}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 239
    .line 240
    .line 241
    invoke-static {v12, v3, v5, v2}, LS3/e;->z(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 242
    .line 243
    .line 244
    goto :goto_c

    .line 245
    :cond_10
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
    :cond_11
    :goto_c
    iget-boolean v3, v7, Lcom/google/android/gms/internal/ads/p2;->e:Z

    .line 254
    .line 255
    if-eqz v3, :cond_13

    .line 256
    .line 257
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    .line 258
    .line 259
    iget-boolean v13, v7, Lcom/google/android/gms/internal/ads/p2;->e:Z

    .line 260
    .line 261
    if-eqz v13, :cond_12

    .line 262
    .line 263
    iget v13, v7, Lcom/google/android/gms/internal/ads/p2;->d:I

    .line 264
    .line 265
    invoke-direct {v3, v13}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-static {v12, v3, v5, v2}, LS3/e;->z(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 269
    .line 270
    .line 271
    goto :goto_d

    .line 272
    :cond_12
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
    :cond_13
    :goto_d
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/p2;->a:Ljava/lang/String;

    .line 281
    .line 282
    if-eqz v3, :cond_14

    .line 283
    .line 284
    new-instance v3, Landroid/text/style/TypefaceSpan;

    .line 285
    .line 286
    iget-object v13, v7, Lcom/google/android/gms/internal/ads/p2;->a:Ljava/lang/String;

    .line 287
    .line 288
    invoke-direct {v3, v13}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-static {v12, v3, v5, v2}, LS3/e;->z(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 292
    .line 293
    .line 294
    :cond_14
    iget-object v3, v7, Lcom/google/android/gms/internal/ads/p2;->r:Lcom/google/android/gms/internal/ads/l2;

    .line 295
    .line 296
    const/4 v13, 0x3

    .line 297
    if-eqz v3, :cond_19

    .line 298
    .line 299
    iget v14, v3, Lcom/google/android/gms/internal/ads/l2;->a:I

    .line 300
    .line 301
    if-ne v14, v15, :cond_17

    .line 302
    .line 303
    iget v6, v6, Lcom/google/android/gms/internal/ads/o2;->j:I

    .line 304
    .line 305
    const/4 v14, 0x2

    .line 306
    if-eq v6, v14, :cond_15

    .line 307
    .line 308
    const/4 v14, 0x1

    .line 309
    if-ne v6, v14, :cond_16

    .line 310
    .line 311
    :cond_15
    const/4 v6, 0x3

    .line 312
    goto :goto_e

    .line 313
    :cond_16
    const/4 v6, 0x1

    .line 314
    :goto_e
    move v14, v6

    .line 315
    const/4 v6, 0x1

    .line 316
    goto :goto_f

    .line 317
    :cond_17
    iget v6, v3, Lcom/google/android/gms/internal/ads/l2;->b:I

    .line 318
    .line 319
    :goto_f
    const/4 v15, -0x2

    .line 320
    iget v3, v3, Lcom/google/android/gms/internal/ads/l2;->c:I

    .line 321
    .line 322
    if-ne v3, v15, :cond_18

    .line 323
    .line 324
    const/4 v3, 0x1

    .line 325
    :cond_18
    new-instance v15, Lcom/google/android/gms/internal/ads/Wk;

    .line 326
    .line 327
    invoke-direct {v15, v14, v6, v3}, Lcom/google/android/gms/internal/ads/Wk;-><init>(III)V

    .line 328
    .line 329
    .line 330
    invoke-static {v12, v15, v5, v2}, LS3/e;->z(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 331
    .line 332
    .line 333
    :cond_19
    iget v3, v7, Lcom/google/android/gms/internal/ads/p2;->m:I

    .line 334
    .line 335
    const/4 v6, 0x2

    .line 336
    if-eq v3, v6, :cond_1c

    .line 337
    .line 338
    if-eq v3, v13, :cond_1b

    .line 339
    .line 340
    const/4 v6, 0x4

    .line 341
    if-eq v3, v6, :cond_1b

    .line 342
    .line 343
    :cond_1a
    :goto_10
    const/4 v13, 0x0

    .line 344
    goto/16 :goto_17

    .line 345
    .line 346
    :cond_1b
    new-instance v3, Lcom/google/android/gms/internal/ads/k2;

    .line 347
    .line 348
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 349
    .line 350
    .line 351
    const/16 v6, 0x21

    .line 352
    .line 353
    invoke-interface {v12, v3, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 354
    .line 355
    .line 356
    goto :goto_10

    .line 357
    :cond_1c
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/m2;->j:Lcom/google/android/gms/internal/ads/m2;

    .line 358
    .line 359
    :goto_11
    if-eqz v3, :cond_1e

    .line 360
    .line 361
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/m2;->f:Lcom/google/android/gms/internal/ads/p2;

    .line 362
    .line 363
    iget-object v15, v3, Lcom/google/android/gms/internal/ads/m2;->g:[Ljava/lang/String;

    .line 364
    .line 365
    invoke-static {v14, v15, v8}, Lcom/bumptech/glide/c;->A(Lcom/google/android/gms/internal/ads/p2;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/p2;

    .line 366
    .line 367
    .line 368
    move-result-object v14

    .line 369
    if-eqz v14, :cond_1d

    .line 370
    .line 371
    iget v14, v14, Lcom/google/android/gms/internal/ads/p2;->m:I

    .line 372
    .line 373
    const/4 v15, 0x1

    .line 374
    if-eq v14, v15, :cond_1f

    .line 375
    .line 376
    :cond_1d
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/m2;->j:Lcom/google/android/gms/internal/ads/m2;

    .line 377
    .line 378
    goto :goto_11

    .line 379
    :cond_1e
    const/4 v3, 0x0

    .line 380
    :cond_1f
    if-eqz v3, :cond_1a

    .line 381
    .line 382
    new-instance v14, Ljava/util/ArrayDeque;

    .line 383
    .line 384
    invoke-direct {v14}, Ljava/util/ArrayDeque;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v14, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    :goto_12
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 391
    .line 392
    .line 393
    move-result v15

    .line 394
    if-nez v15, :cond_22

    .line 395
    .line 396
    invoke-virtual {v14}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v15

    .line 400
    check-cast v15, Lcom/google/android/gms/internal/ads/m2;

    .line 401
    .line 402
    iget-object v6, v15, Lcom/google/android/gms/internal/ads/m2;->f:Lcom/google/android/gms/internal/ads/p2;

    .line 403
    .line 404
    iget-object v13, v15, Lcom/google/android/gms/internal/ads/m2;->g:[Ljava/lang/String;

    .line 405
    .line 406
    invoke-static {v6, v13, v8}, Lcom/bumptech/glide/c;->A(Lcom/google/android/gms/internal/ads/p2;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/p2;

    .line 407
    .line 408
    .line 409
    move-result-object v6

    .line 410
    if-eqz v6, :cond_20

    .line 411
    .line 412
    iget v6, v6, Lcom/google/android/gms/internal/ads/p2;->m:I

    .line 413
    .line 414
    const/4 v13, 0x3

    .line 415
    if-ne v6, v13, :cond_20

    .line 416
    .line 417
    move-object v6, v15

    .line 418
    goto :goto_14

    .line 419
    :cond_20
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/m2;->a()I

    .line 420
    .line 421
    .line 422
    move-result v6

    .line 423
    const/4 v13, -0x1

    .line 424
    add-int/2addr v6, v13

    .line 425
    :goto_13
    if-ltz v6, :cond_21

    .line 426
    .line 427
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/m2;->d(I)Lcom/google/android/gms/internal/ads/m2;

    .line 428
    .line 429
    .line 430
    move-result-object v13

    .line 431
    invoke-virtual {v14, v13}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 432
    .line 433
    .line 434
    add-int/lit8 v6, v6, -0x1

    .line 435
    .line 436
    goto :goto_13

    .line 437
    :cond_21
    const/4 v13, 0x3

    .line 438
    goto :goto_12

    .line 439
    :cond_22
    const/4 v6, 0x0

    .line 440
    :goto_14
    if-eqz v6, :cond_1a

    .line 441
    .line 442
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/m2;->a()I

    .line 443
    .line 444
    .line 445
    move-result v13

    .line 446
    const/4 v14, 0x1

    .line 447
    if-ne v13, v14, :cond_25

    .line 448
    .line 449
    const/4 v13, 0x0

    .line 450
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/m2;->d(I)Lcom/google/android/gms/internal/ads/m2;

    .line 451
    .line 452
    .line 453
    move-result-object v14

    .line 454
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/m2;->b:Ljava/lang/String;

    .line 455
    .line 456
    if-eqz v14, :cond_26

    .line 457
    .line 458
    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/m2;->d(I)Lcom/google/android/gms/internal/ads/m2;

    .line 459
    .line 460
    .line 461
    move-result-object v14

    .line 462
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/m2;->b:Ljava/lang/String;

    .line 463
    .line 464
    sget v15, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 465
    .line 466
    iget-object v15, v6, Lcom/google/android/gms/internal/ads/m2;->f:Lcom/google/android/gms/internal/ads/p2;

    .line 467
    .line 468
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/m2;->g:[Ljava/lang/String;

    .line 469
    .line 470
    invoke-static {v15, v6, v8}, Lcom/bumptech/glide/c;->A(Lcom/google/android/gms/internal/ads/p2;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/p2;

    .line 471
    .line 472
    .line 473
    move-result-object v6

    .line 474
    if-eqz v6, :cond_23

    .line 475
    .line 476
    iget v6, v6, Lcom/google/android/gms/internal/ads/p2;->n:I

    .line 477
    .line 478
    :goto_15
    const/4 v15, -0x1

    .line 479
    goto :goto_16

    .line 480
    :cond_23
    const/4 v6, -0x1

    .line 481
    goto :goto_15

    .line 482
    :goto_16
    if-ne v6, v15, :cond_24

    .line 483
    .line 484
    iget-object v15, v3, Lcom/google/android/gms/internal/ads/m2;->f:Lcom/google/android/gms/internal/ads/p2;

    .line 485
    .line 486
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/m2;->g:[Ljava/lang/String;

    .line 487
    .line 488
    invoke-static {v15, v3, v8}, Lcom/bumptech/glide/c;->A(Lcom/google/android/gms/internal/ads/p2;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/ads/p2;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    if-eqz v3, :cond_24

    .line 493
    .line 494
    iget v6, v3, Lcom/google/android/gms/internal/ads/p2;->n:I

    .line 495
    .line 496
    :cond_24
    new-instance v3, Lcom/google/android/gms/internal/ads/Bk;

    .line 497
    .line 498
    invoke-direct {v3, v14, v6}, Lcom/google/android/gms/internal/ads/Bk;-><init>(Ljava/lang/String;I)V

    .line 499
    .line 500
    .line 501
    const/16 v6, 0x21

    .line 502
    .line 503
    invoke-interface {v12, v3, v5, v2, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 504
    .line 505
    .line 506
    goto :goto_17

    .line 507
    :cond_25
    const/4 v13, 0x0

    .line 508
    :cond_26
    const-string v3, "TtmlRenderUtil"

    .line 509
    .line 510
    const-string v6, "Skipping rubyText node without exactly one text child."

    .line 511
    .line 512
    invoke-static {v3, v6}, Lcom/google/android/gms/internal/ads/Zo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    :goto_17
    iget v3, v7, Lcom/google/android/gms/internal/ads/p2;->q:I

    .line 516
    .line 517
    const/4 v6, 0x1

    .line 518
    if-ne v3, v6, :cond_27

    .line 519
    .line 520
    new-instance v3, Lcom/google/android/gms/internal/ads/xk;

    .line 521
    .line 522
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 523
    .line 524
    .line 525
    invoke-static {v12, v3, v5, v2}, LS3/e;->z(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 526
    .line 527
    .line 528
    :cond_27
    iget v3, v7, Lcom/google/android/gms/internal/ads/p2;->j:I

    .line 529
    .line 530
    const/high16 v14, 0x42c80000    # 100.0f

    .line 531
    .line 532
    if-eq v3, v6, :cond_2e

    .line 533
    .line 534
    const/4 v6, 0x2

    .line 535
    if-eq v3, v6, :cond_2d

    .line 536
    .line 537
    const/4 v6, 0x3

    .line 538
    if-eq v3, v6, :cond_28

    .line 539
    .line 540
    move-object/from16 v16, v1

    .line 541
    .line 542
    goto/16 :goto_1a

    .line 543
    .line 544
    :cond_28
    iget v3, v7, Lcom/google/android/gms/internal/ads/p2;->k:F

    .line 545
    .line 546
    div-float/2addr v3, v14

    .line 547
    const-class v6, Landroid/text/style/RelativeSizeSpan;

    .line 548
    .line 549
    invoke-interface {v12, v5, v2, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    move-result-object v6

    .line 553
    check-cast v6, [Landroid/text/style/RelativeSizeSpan;

    .line 554
    .line 555
    array-length v15, v6

    .line 556
    move v13, v3

    .line 557
    const/4 v3, 0x0

    .line 558
    :goto_18
    if-ge v3, v15, :cond_2c

    .line 559
    .line 560
    aget-object v14, v6, v3

    .line 561
    .line 562
    move-object/from16 v16, v1

    .line 563
    .line 564
    invoke-interface {v12, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 565
    .line 566
    .line 567
    move-result v1

    .line 568
    if-gt v1, v5, :cond_29

    .line 569
    .line 570
    invoke-interface {v12, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 571
    .line 572
    .line 573
    move-result v1

    .line 574
    if-lt v1, v2, :cond_29

    .line 575
    .line 576
    invoke-virtual {v14}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    .line 577
    .line 578
    .line 579
    move-result v1

    .line 580
    mul-float v1, v1, v13

    .line 581
    .line 582
    move v13, v1

    .line 583
    :cond_29
    invoke-interface {v12, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 584
    .line 585
    .line 586
    move-result v1

    .line 587
    if-ne v1, v5, :cond_2a

    .line 588
    .line 589
    invoke-interface {v12, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    if-ne v1, v2, :cond_2a

    .line 594
    .line 595
    invoke-interface {v12, v14}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 596
    .line 597
    .line 598
    move-result v1

    .line 599
    move-object/from16 v17, v6

    .line 600
    .line 601
    const/16 v6, 0x21

    .line 602
    .line 603
    if-ne v1, v6, :cond_2b

    .line 604
    .line 605
    invoke-interface {v12, v14}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 606
    .line 607
    .line 608
    goto :goto_19

    .line 609
    :cond_2a
    move-object/from16 v17, v6

    .line 610
    .line 611
    :cond_2b
    :goto_19
    add-int/lit8 v3, v3, 0x1

    .line 612
    .line 613
    move-object/from16 v1, v16

    .line 614
    .line 615
    move-object/from16 v6, v17

    .line 616
    .line 617
    const/high16 v14, 0x42c80000    # 100.0f

    .line 618
    .line 619
    goto :goto_18

    .line 620
    :cond_2c
    move-object/from16 v16, v1

    .line 621
    .line 622
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    .line 623
    .line 624
    invoke-direct {v1, v13}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 625
    .line 626
    .line 627
    const/16 v3, 0x21

    .line 628
    .line 629
    invoke-interface {v12, v1, v5, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 630
    .line 631
    .line 632
    goto :goto_1a

    .line 633
    :cond_2d
    move-object/from16 v16, v1

    .line 634
    .line 635
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    .line 636
    .line 637
    iget v3, v7, Lcom/google/android/gms/internal/ads/p2;->k:F

    .line 638
    .line 639
    invoke-direct {v1, v3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 640
    .line 641
    .line 642
    invoke-static {v12, v1, v5, v2}, LS3/e;->z(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 643
    .line 644
    .line 645
    goto :goto_1a

    .line 646
    :cond_2e
    move-object/from16 v16, v1

    .line 647
    .line 648
    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    .line 649
    .line 650
    iget v3, v7, Lcom/google/android/gms/internal/ads/p2;->k:F

    .line 651
    .line 652
    float-to-int v3, v3

    .line 653
    const/4 v6, 0x1

    .line 654
    invoke-direct {v1, v3, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 655
    .line 656
    .line 657
    invoke-static {v12, v1, v5, v2}, LS3/e;->z(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V

    .line 658
    .line 659
    .line 660
    :goto_1a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/m2;->a:Ljava/lang/String;

    .line 661
    .line 662
    const-string v2, "p"

    .line 663
    .line 664
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    move-result v1

    .line 668
    if-eqz v1, :cond_31

    .line 669
    .line 670
    iget v1, v7, Lcom/google/android/gms/internal/ads/p2;->s:F

    .line 671
    .line 672
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 673
    .line 674
    .line 675
    cmpl-float v2, v1, v2

    .line 676
    .line 677
    if-eqz v2, :cond_2f

    .line 678
    .line 679
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 680
    .line 681
    mul-float v1, v1, v2

    .line 682
    .line 683
    const/high16 v2, 0x42c80000    # 100.0f

    .line 684
    .line 685
    div-float/2addr v1, v2

    .line 686
    iput v1, v4, Lcom/google/android/gms/internal/ads/Dj;->o:F

    .line 687
    .line 688
    :cond_2f
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/p2;->o:Landroid/text/Layout$Alignment;

    .line 689
    .line 690
    if-eqz v1, :cond_30

    .line 691
    .line 692
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/Dj;->c:Landroid/text/Layout$Alignment;

    .line 693
    .line 694
    :cond_30
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/p2;->p:Landroid/text/Layout$Alignment;

    .line 695
    .line 696
    if-eqz v1, :cond_31

    .line 697
    .line 698
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/Dj;->d:Landroid/text/Layout$Alignment;

    .line 699
    .line 700
    :cond_31
    move-object/from16 v1, v16

    .line 701
    .line 702
    goto/16 :goto_1

    .line 703
    .line 704
    :cond_32
    move-object/from16 v11, p4

    .line 705
    .line 706
    move-object/from16 v10, p6

    .line 707
    .line 708
    goto/16 :goto_1

    .line 709
    .line 710
    :cond_33
    move-object/from16 v11, p4

    .line 711
    .line 712
    move-object/from16 v10, p6

    .line 713
    .line 714
    const/4 v13, 0x0

    .line 715
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/m2;->a()I

    .line 716
    .line 717
    .line 718
    move-result v1

    .line 719
    if-ge v13, v1, :cond_34

    .line 720
    .line 721
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/m2;->d(I)Lcom/google/android/gms/internal/ads/m2;

    .line 722
    .line 723
    .line 724
    move-result-object v1

    .line 725
    move-wide/from16 v2, p1

    .line 726
    .line 727
    move-object/from16 v4, p3

    .line 728
    .line 729
    move-object/from16 v5, p4

    .line 730
    .line 731
    move-object v6, v9

    .line 732
    move-object/from16 v7, p6

    .line 733
    .line 734
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/m2;->i(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/TreeMap;)V

    .line 735
    .line 736
    .line 737
    add-int/lit8 v13, v13, 0x1

    .line 738
    .line 739
    goto :goto_1b

    .line 740
    :cond_34
    :goto_1c
    return-void
.end method

.method public final j(JZLjava/lang/String;Ljava/util/TreeMap;)V
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p5

    .line 3
    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/m2;->k:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/m2;->l:Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 12
    .line 13
    .line 14
    const-string v2, "metadata"

    .line 15
    .line 16
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/m2;->a:Ljava/lang/String;

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
    goto/16 :goto_7

    .line 25
    .line 26
    :cond_0
    const-string v2, ""

    .line 27
    .line 28
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/m2;->h:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    move-object v9, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-object/from16 v9, p4

    .line 39
    .line 40
    :goto_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/m2;->c:Z

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    if-eqz p3, :cond_2

    .line 45
    .line 46
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/ads/m2;->f(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/m2;->b:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 56
    .line 57
    .line 58
    return-void

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
    if-eqz v2, :cond_4

    .line 68
    .line 69
    if-nez p3, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/ads/m2;->f(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/m2;->e(J)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_b

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
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-eqz v4, :cond_5

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
    check-cast v4, Lcom/google/android/gms/internal/ads/Dj;

    .line 117
    .line 118
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Dj;->a:Ljava/lang/CharSequence;

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
    goto :goto_2

    .line 137
    :cond_5
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
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/m2;->a()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-ge v13, v1, :cond_8

    .line 150
    .line 151
    invoke-virtual {p0, v13}, Lcom/google/android/gms/internal/ads/m2;->d(I)Lcom/google/android/gms/internal/ads/m2;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const/4 v2, 0x1

    .line 156
    if-nez p3, :cond_6

    .line 157
    .line 158
    if-eqz v11, :cond_7

    .line 159
    .line 160
    :cond_6
    const/4 v4, 0x1

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    const/4 v4, 0x0

    .line 163
    :goto_4
    move-wide v2, p1

    .line 164
    move-object v5, v9

    .line 165
    move-object/from16 v6, p5

    .line 166
    .line 167
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/m2;->j(JZLjava/lang/String;Ljava/util/TreeMap;)V

    .line 168
    .line 169
    .line 170
    add-int/lit8 v13, v13, 0x1

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_8
    if-eqz v11, :cond_a

    .line 174
    .line 175
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/ads/m2;->f(Ljava/lang/String;Ljava/util/TreeMap;)Landroid/text/SpannableStringBuilder;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    :goto_5
    add-int/lit8 v2, v2, -0x1

    .line 184
    .line 185
    if-ltz v2, :cond_9

    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    const/16 v4, 0x20

    .line 192
    .line 193
    if-ne v3, v4, :cond_9

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_9
    if-ltz v2, :cond_a

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-eq v2, v10, :cond_a

    .line 203
    .line 204
    invoke-virtual {v1, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 205
    .line 206
    .line 207
    :cond_a
    invoke-virtual/range {p5 .. p5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_b

    .line 220
    .line 221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    check-cast v2, Ljava/util/Map$Entry;

    .line 226
    .line 227
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    check-cast v3, Ljava/lang/String;

    .line 232
    .line 233
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    check-cast v2, Lcom/google/android/gms/internal/ads/Dj;

    .line 238
    .line 239
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Dj;->a:Ljava/lang/CharSequence;

    .line 240
    .line 241
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    check-cast v2, Ljava/lang/CharSequence;

    .line 245
    .line 246
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v8, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    goto :goto_6

    .line 258
    :cond_b
    :goto_7
    return-void
.end method
