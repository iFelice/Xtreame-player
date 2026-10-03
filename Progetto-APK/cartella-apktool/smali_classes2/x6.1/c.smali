.class public final synthetic Lx6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC6/p;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lx6/c;->G:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lx6/c;->G:I

    .line 2
    .line 3
    const-string v1, "element"

    .line 4
    .line 5
    const-string v2, "acc"

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, LN6/w;

    .line 11
    .line 12
    check-cast p2, Lx6/h;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_0
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    check-cast p2, Lx6/h;

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    return-object p1

    .line 22
    :pswitch_1
    check-cast p2, Lx6/h;

    .line 23
    .line 24
    return-object p1

    .line 25
    :pswitch_2
    check-cast p1, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    check-cast p2, Lx6/h;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_3
    check-cast p1, Lx6/j;

    .line 34
    .line 35
    check-cast p2, Lx6/h;

    .line 36
    .line 37
    invoke-interface {p1, p2}, Lx6/j;->N(Lx6/j;)Lx6/j;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_4
    check-cast p1, Lx6/j;

    .line 43
    .line 44
    check-cast p2, Lx6/h;

    .line 45
    .line 46
    invoke-static {p1, v2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p2}, Lx6/h;->getKey()Lx6/i;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-interface {p1, v0}, Lx6/j;->O(Lx6/i;)Lx6/j;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    sget-object v0, Lx6/k;->G:Lx6/k;

    .line 61
    .line 62
    if-ne p1, v0, :cond_0

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_0
    sget-object v1, Lx6/f;->G:Lx6/f;

    .line 66
    .line 67
    invoke-interface {p1, v1}, Lx6/j;->k(Lx6/i;)Lx6/h;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lx6/g;

    .line 72
    .line 73
    if-nez v2, :cond_1

    .line 74
    .line 75
    new-instance v0, Lx6/d;

    .line 76
    .line 77
    invoke-direct {v0, p2, p1}, Lx6/d;-><init>(Lx6/h;Lx6/j;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    move-object p2, v0

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-interface {p1, v1}, Lx6/j;->O(Lx6/i;)Lx6/j;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-ne p1, v0, :cond_2

    .line 87
    .line 88
    new-instance p1, Lx6/d;

    .line 89
    .line 90
    invoke-direct {p1, v2, p2}, Lx6/d;-><init>(Lx6/h;Lx6/j;)V

    .line 91
    .line 92
    .line 93
    move-object p2, p1

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    new-instance v0, Lx6/d;

    .line 96
    .line 97
    new-instance v1, Lx6/d;

    .line 98
    .line 99
    invoke-direct {v1, p2, p1}, Lx6/d;-><init>(Lx6/h;Lx6/j;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v2, v1}, Lx6/d;-><init>(Lx6/h;Lx6/j;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :goto_1
    return-object p2

    .line 107
    :pswitch_5
    check-cast p1, Ljava/lang/String;

    .line 108
    .line 109
    check-cast p2, Lx6/h;

    .line 110
    .line 111
    invoke-static {p1, v2}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p2, v1}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    goto :goto_2

    .line 128
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p1, ", "

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    :goto_2
    return-object p1

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
