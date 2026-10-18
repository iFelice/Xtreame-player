.class public abstract Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.super Lcom/google/protobuf/i1;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/R1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/protobuf/d1;",
        ">",
        "Lcom/google/protobuf/i1;",
        "Lcom/google/protobuf/R1;"
    }
.end annotation


# instance fields
.field protected extensions:Lcom/google/protobuf/W0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/W0;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/i1;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/google/protobuf/W0;->d:Lcom/google/protobuf/W0;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 7
    .line 8
    return-void
.end method

.method private eagerlyMergeMessageSetExtension(Lcom/google/protobuf/w;Lcom/google/protobuf/g1;Lcom/google/protobuf/O0;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w;",
            "Lcom/google/protobuf/g1;",
            "Lcom/google/protobuf/O0;",
            "I)V"
        }
    .end annotation

    .line 1
    shl-int/lit8 v0, p4, 0x3

    .line 2
    .line 3
    or-int/lit8 v5, v0, 0x2

    .line 4
    .line 5
    move-object v1, p0

    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p2

    .line 9
    move v6, p4

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;Lcom/google/protobuf/g1;II)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/r;Lcom/google/protobuf/O0;Lcom/google/protobuf/g1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/r;",
            "Lcom/google/protobuf/O0;",
            "Lcom/google/protobuf/g1;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 2
    .line 3
    iget-object v1, p3, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lcom/google/protobuf/l2;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/protobuf/Q1;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/protobuf/Q1;->toBuilder()Lcom/google/protobuf/P1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p3, Lcom/google/protobuf/g1;->c:Lcom/google/protobuf/Q1;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/google/protobuf/Q1;->newBuilderForType()Lcom/google/protobuf/P1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    move-object v1, v0

    .line 30
    check-cast v1, Lcom/google/protobuf/a;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/r;->p()Lcom/google/protobuf/w;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    move-object v2, v1

    .line 40
    check-cast v2, Lcom/google/protobuf/b1;

    .line 41
    .line 42
    invoke-virtual {v2, p1, p2}, Lcom/google/protobuf/b1;->f(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)V

    .line 43
    .line 44
    .line 45
    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Lcom/google/protobuf/w;->a(I)V
    :try_end_0
    .catch Lcom/google/protobuf/x1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    check-cast v0, Lcom/google/protobuf/b1;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/google/protobuf/b1;->b()Lcom/google/protobuf/i1;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/W0;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    iget-object v0, p3, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 60
    .line 61
    invoke-virtual {p3, p1}, Lcom/google/protobuf/g1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p2, v0, p1}, Lcom/google/protobuf/W0;->p(Lcom/google/protobuf/f1;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :catch_1
    move-exception p1

    .line 72
    goto :goto_2

    .line 73
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    .line 74
    .line 75
    new-instance p3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v0, "Reading "

    .line 78
    .line 79
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v0, " from a ByteString threw an IOException (should never happen)."

    .line 94
    .line 95
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    .line 104
    .line 105
    throw p2

    .line 106
    :goto_2
    throw p1
.end method

.method private mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/Q1;Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/Q1;",
            ">(TMessageType;",
            "Lcom/google/protobuf/w;",
            "Lcom/google/protobuf/O0;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move-object v2, v1

    .line 4
    move-object v3, v2

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/protobuf/w;->F()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    if-nez v4, :cond_1

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_1
    const/16 v5, 0x10

    .line 13
    .line 14
    if-ne v4, v5, :cond_2

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/google/protobuf/w;->G()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p3, v0, p1}, Lcom/google/protobuf/O0;->a(ILcom/google/protobuf/Q1;)Lcom/google/protobuf/g1;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const/16 v5, 0x1a

    .line 28
    .line 29
    if-ne v4, v5, :cond_4

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    invoke-direct {p0, p2, v3, p3, v0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->eagerlyMergeMessageSetExtension(Lcom/google/protobuf/w;Lcom/google/protobuf/g1;Lcom/google/protobuf/O0;I)V

    .line 36
    .line 37
    .line 38
    move-object v2, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p2}, Lcom/google/protobuf/w;->n()Lcom/google/protobuf/q;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    goto :goto_0

    .line 45
    :cond_4
    invoke-virtual {p2, v4}, Lcom/google/protobuf/w;->I(I)Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_0

    .line 50
    .line 51
    :goto_1
    const/16 p1, 0xc

    .line 52
    .line 53
    invoke-virtual {p2, p1}, Lcom/google/protobuf/w;->a(I)V

    .line 54
    .line 55
    .line 56
    if-eqz v2, :cond_6

    .line 57
    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    if-eqz v3, :cond_5

    .line 61
    .line 62
    invoke-direct {p0, v2, p3, v3}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromBytes(Lcom/google/protobuf/r;Lcom/google/protobuf/O0;Lcom/google/protobuf/g1;)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_5
    invoke-virtual {p0, v0, v2}, Lcom/google/protobuf/i1;->mergeLengthDelimitedField(ILcom/google/protobuf/r;)V

    .line 67
    .line 68
    .line 69
    :cond_6
    :goto_2
    return-void
.end method

.method private parseExtension(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;Lcom/google/protobuf/g1;II)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/w;",
            "Lcom/google/protobuf/O0;",
            "Lcom/google/protobuf/g1;",
            "II)Z"
        }
    .end annotation

    .line 1
    and-int/lit8 v0, p4, 0x7

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p3, :cond_1

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, p3, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 11
    .line 12
    iget-object v4, v3, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 13
    .line 14
    sget-object v5, Lcom/google/protobuf/W0;->d:Lcom/google/protobuf/W0;

    .line 15
    .line 16
    iget v5, v4, Lcom/google/protobuf/S2;->H:I

    .line 17
    .line 18
    if-ne v0, v5, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-boolean v3, v3, Lcom/google/protobuf/f1;->J:Z

    .line 23
    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/google/protobuf/S2;->a()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    const/4 v3, 0x2

    .line 33
    if-ne v0, v3, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    :goto_0
    if-eqz v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p4, p1}, Lcom/google/protobuf/i1;->parseUnknownField(ILcom/google/protobuf/w;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/protobuf/W0;

    .line 44
    .line 45
    .line 46
    if-eqz v0, :cond_7

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/protobuf/w;->x()I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-virtual {p1, p2}, Lcom/google/protobuf/w;->l(I)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    iget-object p4, p3, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 57
    .line 58
    iget-object p5, p4, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 59
    .line 60
    sget-object v0, Lcom/google/protobuf/S2;->M:Lcom/google/protobuf/S2;

    .line 61
    .line 62
    if-ne p5, v0, :cond_5

    .line 63
    .line 64
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/w;->e()I

    .line 65
    .line 66
    .line 67
    move-result p5

    .line 68
    if-lez p5, :cond_6

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/google/protobuf/w;->p()I

    .line 71
    .line 72
    .line 73
    move-result p5

    .line 74
    iget-object v0, p4, Lcom/google/protobuf/f1;->G:Lcom/google/protobuf/p1;

    .line 75
    .line 76
    invoke-interface {v0, p5}, Lcom/google/protobuf/p1;->b(I)Lcom/google/protobuf/o1;

    .line 77
    .line 78
    .line 79
    move-result-object p5

    .line 80
    if-nez p5, :cond_4

    .line 81
    .line 82
    return v1

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 84
    .line 85
    invoke-virtual {p3, p5}, Lcom/google/protobuf/g1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p5

    .line 89
    invoke-virtual {v0, p4, p5}, Lcom/google/protobuf/W0;->a(Lcom/google/protobuf/f1;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/google/protobuf/w;->e()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    if-lez p3, :cond_6

    .line 98
    .line 99
    iget-object p3, p4, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 100
    .line 101
    sget-object p5, Lcom/google/protobuf/W0;->d:Lcom/google/protobuf/W0;

    .line 102
    .line 103
    invoke-static {p1, p3, v1}, Lcom/google/protobuf/i;->V(Lcom/google/protobuf/w;Lcom/google/protobuf/S2;I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    iget-object p5, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 108
    .line 109
    invoke-virtual {p5, p4, p3}, Lcom/google/protobuf/W0;->a(Lcom/google/protobuf/f1;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/protobuf/w;->k(I)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_6

    .line 117
    .line 118
    :cond_7
    iget-object p4, p3, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 119
    .line 120
    iget-object p4, p4, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 121
    .line 122
    iget-object p4, p4, Lcom/google/protobuf/S2;->G:Lcom/google/protobuf/T2;

    .line 123
    .line 124
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 125
    .line 126
    .line 127
    move-result p4

    .line 128
    const/4 v0, 0x7

    .line 129
    iget-object v2, p3, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 130
    .line 131
    if-eq p4, v0, :cond_c

    .line 132
    .line 133
    const/16 p5, 0x8

    .line 134
    .line 135
    if-eq p4, p5, :cond_8

    .line 136
    .line 137
    iget-object p2, v2, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 138
    .line 139
    sget-object p4, Lcom/google/protobuf/W0;->d:Lcom/google/protobuf/W0;

    .line 140
    .line 141
    invoke-static {p1, p2, v1}, Lcom/google/protobuf/i;->V(Lcom/google/protobuf/w;Lcom/google/protobuf/S2;I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    goto :goto_5

    .line 146
    :cond_8
    iget-boolean p4, v2, Lcom/google/protobuf/f1;->J:Z

    .line 147
    .line 148
    if-nez p4, :cond_9

    .line 149
    .line 150
    iget-object p4, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 151
    .line 152
    iget-object p4, p4, Lcom/google/protobuf/W0;->a:Lcom/google/protobuf/l2;

    .line 153
    .line 154
    invoke-virtual {p4, v2}, Lcom/google/protobuf/l2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p4

    .line 158
    check-cast p4, Lcom/google/protobuf/Q1;

    .line 159
    .line 160
    if-eqz p4, :cond_9

    .line 161
    .line 162
    invoke-interface {p4}, Lcom/google/protobuf/Q1;->toBuilder()Lcom/google/protobuf/P1;

    .line 163
    .line 164
    .line 165
    move-result-object p4

    .line 166
    goto :goto_3

    .line 167
    :cond_9
    const/4 p4, 0x0

    .line 168
    :goto_3
    if-nez p4, :cond_a

    .line 169
    .line 170
    iget-object p4, p3, Lcom/google/protobuf/g1;->c:Lcom/google/protobuf/Q1;

    .line 171
    .line 172
    invoke-interface {p4}, Lcom/google/protobuf/Q1;->newBuilderForType()Lcom/google/protobuf/P1;

    .line 173
    .line 174
    .line 175
    move-result-object p4

    .line 176
    :cond_a
    sget-object p5, Lcom/google/protobuf/S2;->K:Lcom/google/protobuf/P2;

    .line 177
    .line 178
    iget-object v0, v2, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 179
    .line 180
    if-ne v0, p5, :cond_b

    .line 181
    .line 182
    iget p5, v2, Lcom/google/protobuf/f1;->H:I

    .line 183
    .line 184
    invoke-virtual {p1, p5, p4, p2}, Lcom/google/protobuf/w;->t(ILcom/google/protobuf/P1;Lcom/google/protobuf/O0;)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_b
    invoke-virtual {p1, p4, p2}, Lcom/google/protobuf/w;->w(Lcom/google/protobuf/P1;Lcom/google/protobuf/O0;)V

    .line 189
    .line 190
    .line 191
    :goto_4
    check-cast p4, Lcom/google/protobuf/b1;

    .line 192
    .line 193
    invoke-virtual {p4}, Lcom/google/protobuf/b1;->b()Lcom/google/protobuf/i1;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    goto :goto_5

    .line 198
    :cond_c
    invoke-virtual {p1}, Lcom/google/protobuf/w;->p()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    iget-object p2, v2, Lcom/google/protobuf/f1;->G:Lcom/google/protobuf/p1;

    .line 203
    .line 204
    invoke-interface {p2, p1}, Lcom/google/protobuf/p1;->b(I)Lcom/google/protobuf/o1;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    if-nez p2, :cond_d

    .line 209
    .line 210
    invoke-virtual {p0, p5, p1}, Lcom/google/protobuf/i1;->mergeVarintField(II)V

    .line 211
    .line 212
    .line 213
    return v1

    .line 214
    :cond_d
    move-object p1, p2

    .line 215
    :goto_5
    iget-boolean p2, v2, Lcom/google/protobuf/f1;->J:Z

    .line 216
    .line 217
    if-eqz p2, :cond_e

    .line 218
    .line 219
    iget-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 220
    .line 221
    invoke-virtual {p3, p1}, Lcom/google/protobuf/g1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    invoke-virtual {p2, v2, p1}, Lcom/google/protobuf/W0;->a(Lcom/google/protobuf/f1;Ljava/lang/Object;)V

    .line 226
    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_e
    iget-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 230
    .line 231
    invoke-virtual {p3, p1}, Lcom/google/protobuf/g1;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p2, v2, p1}, Lcom/google/protobuf/W0;->p(Lcom/google/protobuf/f1;Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    :goto_6
    return v1
.end method

.method private verifyExtensionContainingType(Lcom/google/protobuf/g1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/g1;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Lcom/google/protobuf/g1;->a:Lcom/google/protobuf/Q1;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/i1;->getDefaultInstanceForType()Lcom/google/protobuf/i1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method


# virtual methods
.method public ensureExtensionsAreMutable()Lcom/google/protobuf/W0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/W0;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/protobuf/W0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/W0;->b()Lcom/google/protobuf/W0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 14
    .line 15
    return-object v0
.end method

.method public extensionsAreInitialized()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/W0;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public extensionsSerializedSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/W0;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public extensionsSerializedSizeAsMessageSet()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/W0;->f()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Q1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i1;->getDefaultInstanceForType()Lcom/google/protobuf/i1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getExtension(Lcom/google/protobuf/L0;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/L0;",
            ")TType;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/i1;->access$000(Lcom/google/protobuf/L0;)Lcom/google/protobuf/g1;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/g1;)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    iget-object v1, p1, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 4
    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lcom/google/protobuf/l2;

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6
    iget-object p1, p1, Lcom/google/protobuf/g1;->b:Ljava/lang/Object;

    return-object p1

    .line 7
    :cond_0
    iget-object v1, p1, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    iget-boolean v2, v1, Lcom/google/protobuf/f1;->J:Z

    if-eqz v2, :cond_2

    .line 8
    iget-object v1, v1, Lcom/google/protobuf/f1;->I:Lcom/google/protobuf/S2;

    .line 9
    iget-object v1, v1, Lcom/google/protobuf/S2;->G:Lcom/google/protobuf/T2;

    .line 10
    sget-object v2, Lcom/google/protobuf/T2;->O:Lcom/google/protobuf/T2;

    if-ne v1, v2, :cond_3

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 13
    invoke-virtual {p1, v2}, Lcom/google/protobuf/g1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/protobuf/g1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getExtension(Lcom/google/protobuf/L0;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/L0;",
            "I)TType;"
        }
    .end annotation

    .line 15
    invoke-static {p1}, Lcom/google/protobuf/i1;->access$000(Lcom/google/protobuf/L0;)Lcom/google/protobuf/g1;

    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/g1;)V

    .line 17
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    iget-object v1, p1, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    iget-boolean v2, v1, Lcom/google/protobuf/f1;->J:Z

    if-eqz v2, :cond_1

    .line 20
    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lcom/google/protobuf/l2;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/l2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/google/protobuf/g1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getExtensionCount(Lcom/google/protobuf/L0;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/L0;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/i1;->access$000(Lcom/google/protobuf/L0;)Lcom/google/protobuf/g1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/g1;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p1, Lcom/google/protobuf/f1;->J:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lcom/google/protobuf/l2;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/google/protobuf/l2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    :goto_0
    return p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    const-string v0, "getRepeatedField() can only be called on repeated fields."

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1
.end method

.method public final hasExtension(Lcom/google/protobuf/L0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/L0;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/i1;->access$000(Lcom/google/protobuf/L0;)Lcom/google/protobuf/g1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->verifyExtensionContainingType(Lcom/google/protobuf/g1;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/google/protobuf/g1;->d:Lcom/google/protobuf/f1;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-boolean v1, p1, Lcom/google/protobuf/f1;->J:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/protobuf/W0;->a:Lcom/google/protobuf/l2;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/google/protobuf/l2;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "hasField() can only be called on non-repeated fields."

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public final mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/protobuf/W0;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/W0;->b()Lcom/google/protobuf/W0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/protobuf/W0;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/google/protobuf/W0;->n(Lcom/google/protobuf/W0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/P1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i1;->newBuilderForType()Lcom/google/protobuf/b1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public newExtensionWriter()Lcom/google/protobuf/e1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/e1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/protobuf/e1;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public newMessageSetExtensionWriter()Lcom/google/protobuf/e1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/e1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/e1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/protobuf/e1;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public parseUnknownField(Lcom/google/protobuf/Q1;Lcom/google/protobuf/w;Lcom/google/protobuf/O0;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/Q1;",
            ">(TMessageType;",
            "Lcom/google/protobuf/w;",
            "Lcom/google/protobuf/O0;",
            "I)Z"
        }
    .end annotation

    .line 1
    ushr-int/lit8 v5, p4, 0x3

    .line 2
    .line 3
    invoke-virtual {p3, v5, p1}, Lcom/google/protobuf/O0;->a(ILcom/google/protobuf/Q1;)Lcom/google/protobuf/g1;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p2

    .line 9
    move-object v2, p3

    .line 10
    move v4, p4

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseExtension(Lcom/google/protobuf/w;Lcom/google/protobuf/O0;Lcom/google/protobuf/g1;II)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public parseUnknownFieldAsMessageSet(Lcom/google/protobuf/Q1;Lcom/google/protobuf/w;Lcom/google/protobuf/O0;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType::",
            "Lcom/google/protobuf/Q1;",
            ">(TMessageType;",
            "Lcom/google/protobuf/w;",
            "Lcom/google/protobuf/O0;",
            "I)Z"
        }
    .end annotation

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    if-ne p4, v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->mergeMessageSetExtensionFromCodedStream(Lcom/google/protobuf/Q1;Lcom/google/protobuf/w;Lcom/google/protobuf/O0;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    return p1

    .line 10
    :cond_0
    and-int/lit8 v0, p4, 0x7

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->parseUnknownField(Lcom/google/protobuf/Q1;Lcom/google/protobuf/w;Lcom/google/protobuf/O0;I)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_1
    invoke-virtual {p2, p4}, Lcom/google/protobuf/w;->I(I)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/P1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/i1;->toBuilder()Lcom/google/protobuf/b1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
