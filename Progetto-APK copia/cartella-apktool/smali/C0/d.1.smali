.class public final synthetic LC0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp0/u;
.implements Lp0/v;
.implements Lp0/j;
.implements Lt/j;
.implements Lc3/b;
.implements Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;
.implements Lk6/a;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LC0/d;->G:I

    .line 5
    .line 6
    iput-object p2, p0, LC0/d;->H:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, LC0/d;->I:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, LC0/d;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LO0/D;

    .line 4
    .line 5
    iget-object v1, p0, LC0/d;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LO0/u;

    .line 8
    .line 9
    check-cast p1, LO0/E;

    .line 10
    .line 11
    iget v2, v0, LO0/D;->a:I

    .line 12
    .line 13
    iget-object v0, v0, LO0/D;->b:LO0/y;

    .line 14
    .line 15
    invoke-interface {p1, v2, v0, v1}, LO0/E;->M(ILO0/y;LO0/u;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final b(Lt/i;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, LC0/d;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LJ6/u;

    .line 4
    .line 5
    const-string v1, "$this_asListenableFuture"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, LH1/a;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {v1, v2, p1, v0}, LH1/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, LJ6/Q;

    .line 17
    .line 18
    new-instance p1, LJ6/f;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-direct {p1, v1, v2}, LJ6/f;-><init>(Ljava/lang/Object;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, p1}, LJ6/Q;->r(ZLJ6/N;)LJ6/z;

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, LC0/d;->I:Ljava/lang/Object;

    .line 28
    .line 29
    return-object p1
.end method

.method public final c(Ljava/lang/Object;Lm0/r;)V
    .locals 3

    .line 1
    iget-object v0, p0, LC0/d;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, LC0/A;

    .line 4
    .line 5
    iget-object v1, p0, LC0/d;->I:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lm0/Y;

    .line 8
    .line 9
    check-cast p1, LC0/c;

    .line 10
    .line 11
    new-instance v2, Lm2/l;

    .line 12
    .line 13
    iget-object v0, v0, LC0/A;->K:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-direct {v2, p2, v0}, Lm2/l;-><init>(Lm0/r;Landroid/util/SparseArray;)V

    .line 16
    .line 17
    .line 18
    check-cast p1, LC0/F;

    .line 19
    .line 20
    invoke-virtual {p1, v1, v2}, LC0/F;->d(Lm0/Y;Lm2/l;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final displayMessage(Ld5/e;LV4/D;)V
    .locals 0

    .line 1
    iget-object p1, p0, LC0/d;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, LW4/e;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    throw p1
.end method

.method public final execute()Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, LC0/d;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, LC0/d;->I:Ljava/lang/Object;

    .line 5
    .line 6
    iget-object v3, p0, LC0/d;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v3, La3/j;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v2, Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    int-to-long v4, v4

    .line 49
    sget-object v6, LX2/c;->M:LX2/c;

    .line 50
    .line 51
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    iget-object v7, v3, La3/j;->i:Lb3/c;

    .line 58
    .line 59
    check-cast v7, Lb3/j;

    .line 60
    .line 61
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance v8, LC0/o;

    .line 65
    .line 66
    invoke-direct {v8, v2, v4, v5, v6}, LC0/o;-><init>(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7, v8}, Lb3/j;->N(Lb3/h;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    return-object v1

    .line 74
    :pswitch_0
    check-cast v2, Ljava/lang/Iterable;

    .line 75
    .line 76
    iget-object v0, v3, La3/j;->c:Lb3/d;

    .line 77
    .line 78
    check-cast v0, Lb3/j;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v4, "DELETE FROM events WHERE _id in "

    .line 97
    .line 98
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v2}, Lb3/j;->b0(Ljava/lang/Iterable;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v0}, Lb3/j;->k()Landroid/database/sqlite/SQLiteDatabase;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 121
    .line 122
    .line 123
    :goto_1
    return-object v1

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget v0, p0, LC0/d;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    iget-object v0, p0, LC0/d;->I:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lm0/w0;

    .line 9
    .line 10
    check-cast p1, LC0/c;

    .line 11
    .line 12
    check-cast p1, LC0/F;

    .line 13
    .line 14
    iget-object v1, p1, LC0/F;->p:LF/d;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v2, v1, LF/d;->I:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lm0/t;

    .line 21
    .line 22
    iget v3, v2, Lm0/t;->w:I

    .line 23
    .line 24
    const/4 v4, -0x1

    .line 25
    if-ne v3, v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {v2}, Lm0/t;->a()Lm0/s;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget v3, v0, Lm0/w0;->a:I

    .line 32
    .line 33
    iput v3, v2, Lm0/s;->u:I

    .line 34
    .line 35
    iget v3, v0, Lm0/w0;->b:I

    .line 36
    .line 37
    iput v3, v2, Lm0/s;->v:I

    .line 38
    .line 39
    new-instance v3, Lm0/t;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Lm0/t;-><init>(Lm0/s;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, LF/d;

    .line 45
    .line 46
    iget v4, v1, LF/d;->H:I

    .line 47
    .line 48
    iget-object v1, v1, LF/d;->J:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/lang/String;

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    invoke-direct {v2, v1, v4, v5, v3}, LF/d;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iput-object v2, p1, LC0/F;->p:LF/d;

    .line 57
    .line 58
    :cond_0
    iget p1, v0, Lm0/w0;->a:I

    .line 59
    .line 60
    return-void

    .line 61
    :pswitch_1
    check-cast p1, LC0/c;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_2
    check-cast p1, LC0/c;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :pswitch_3
    check-cast p1, LC0/c;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :pswitch_4
    check-cast p1, LC0/c;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_5
    check-cast p1, LC0/c;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_6
    check-cast p1, LC0/c;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_7
    check-cast p1, LC0/c;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_8
    check-cast p1, LC0/c;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_9
    check-cast p1, LC0/c;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :pswitch_a
    check-cast p1, LC0/c;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
