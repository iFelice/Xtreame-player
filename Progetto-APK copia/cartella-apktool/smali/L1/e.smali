.class public abstract LL1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/adservices/topics/GetTopicsResponse;)LL1/c;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, LA0/F;->p(Landroid/adservices/topics/GetTopicsResponse;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, LA0/F;->j(Ljava/lang/Object;)Landroid/adservices/topics/Topic;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v9, LL1/f;

    .line 29
    .line 30
    invoke-static {v2}, LA0/F;->c(Landroid/adservices/topics/Topic;)J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    invoke-static {v2}, LA0/F;->z(Landroid/adservices/topics/Topic;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v7

    .line 38
    invoke-static {v2}, LL1/d;->a(Landroid/adservices/topics/Topic;)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    move-object v3, v9

    .line 43
    invoke-direct/range {v3 .. v8}, LL1/f;-><init>(IJJ)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/adservices/topics/GetTopicsResponse;->getEncryptedTopics()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/adservices/topics/EncryptedTopic;

    .line 74
    .line 75
    new-instance v3, LL1/a;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/adservices/topics/EncryptedTopic;->getEncryptedTopic()[B

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const-string v5, "encryptedTopic.encryptedTopic"

    .line 82
    .line 83
    invoke-static {v4, v5}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/adservices/topics/EncryptedTopic;->getKeyIdentifier()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    const-string v6, "encryptedTopic.keyIdentifier"

    .line 91
    .line 92
    invoke-static {v5, v6}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Landroid/adservices/topics/EncryptedTopic;->getEncapsulatedKey()[B

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v6, "encryptedTopic.encapsulatedKey"

    .line 100
    .line 101
    invoke-static {v2, v6}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-direct {v3, v5, v4, v2}, LL1/a;-><init>(Ljava/lang/String;[B[B)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_1
    new-instance p0, LL1/c;

    .line 112
    .line 113
    invoke-direct {p0, v0, v1}, LL1/c;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    return-object p0
.end method
