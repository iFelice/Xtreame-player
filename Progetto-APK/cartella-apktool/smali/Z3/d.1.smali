.class public final LZ3/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LZ3/c;

.field public b:LZ3/q;


# direct methods
.method public synthetic constructor <init>(LZ3/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LZ3/d;->a:LZ3/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Ll/x;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, LZ3/d;->b:LZ3/q;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    new-instance v2, Ll/x;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, LZ3/d;->a:LZ3/c;

    .line 13
    .line 14
    iput-object v3, v2, Ll/x;->G:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v3, v3, LZ3/c;->b:LO1/J;

    .line 17
    .line 18
    new-instance v4, LZ3/f;

    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    invoke-direct {v4, v3, v5}, LZ3/f;-><init>(LO1/J;I)V

    .line 22
    .line 23
    .line 24
    invoke-static {v4}, LZ3/V;->a(LZ3/W;)LZ3/X;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iput-object v3, v2, Ll/x;->H:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance v11, LO1/J;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-direct {v11, v1, v5}, LO1/J;-><init>(Ljava/lang/Object;I)V

    .line 35
    .line 36
    .line 37
    iput-object v11, v2, Ll/x;->I:Ljava/lang/Object;

    .line 38
    .line 39
    new-instance v1, LZ3/U;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v1, v2, Ll/x;->J:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object v4, v2, Ll/x;->G:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, LZ3/c;

    .line 49
    .line 50
    iget-object v7, v4, LZ3/c;->b:LO1/J;

    .line 51
    .line 52
    move-object v9, v3

    .line 53
    check-cast v9, LZ3/X;

    .line 54
    .line 55
    new-instance v3, LZ3/x;

    .line 56
    .line 57
    iget-object v15, v4, LZ3/c;->f:LZ3/X;

    .line 58
    .line 59
    iget-object v5, v4, LZ3/c;->g:LZ3/h;

    .line 60
    .line 61
    iget-object v10, v4, LZ3/c;->c:LZ3/X;

    .line 62
    .line 63
    move-object v12, v3

    .line 64
    move-object v13, v7

    .line 65
    move-object v14, v9

    .line 66
    move-object/from16 v16, v5

    .line 67
    .line 68
    move-object/from16 v17, v1

    .line 69
    .line 70
    move-object/from16 v18, v10

    .line 71
    .line 72
    invoke-direct/range {v12 .. v18}, LZ3/x;-><init>(LO1/J;LZ3/X;LZ3/X;LZ3/h;LZ3/X;LZ3/X;)V

    .line 73
    .line 74
    .line 75
    iput-object v3, v2, Ll/x;->K:Ljava/lang/Object;

    .line 76
    .line 77
    new-instance v12, LZ3/t;

    .line 78
    .line 79
    invoke-direct {v12, v9, v3}, LZ3/t;-><init>(LZ3/X;LZ3/X;)V

    .line 80
    .line 81
    .line 82
    iput-object v12, v2, Ll/x;->L:Ljava/lang/Object;

    .line 83
    .line 84
    new-instance v3, Ll/x;

    .line 85
    .line 86
    iget-object v8, v4, LZ3/c;->d:LZ3/X;

    .line 87
    .line 88
    move-object v6, v3

    .line 89
    invoke-direct/range {v6 .. v12}, Ll/x;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v3}, LZ3/V;->a(LZ3/W;)LZ3/X;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    iget-object v4, v1, LZ3/U;->G:LZ3/X;

    .line 97
    .line 98
    if-nez v4, :cond_0

    .line 99
    .line 100
    iput-object v3, v1, LZ3/U;->G:LZ3/X;

    .line 101
    .line 102
    return-object v2

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 104
    .line 105
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 106
    .line 107
    .line 108
    throw v1

    .line 109
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    .line 110
    .line 111
    const-string v2, "instance cannot be null"

    .line 112
    .line 113
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw v1

    .line 117
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 118
    .line 119
    const-class v2, LZ3/q;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    const-string v3, " must be set"

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v1
.end method
