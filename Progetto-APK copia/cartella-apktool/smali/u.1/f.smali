.class public final Lu/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lu/f;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lu/f;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, Lu/f;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lu/f;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, LY5/y;

    .line 9
    .line 10
    check-cast v0, Lf/b;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    packed-switch v1, :pswitch_data_1

    .line 17
    .line 18
    .line 19
    move-object v1, p1

    .line 20
    check-cast v1, LY5/v;

    .line 21
    .line 22
    invoke-virtual {v1}, LY5/v;->y()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :pswitch_0
    move-object v1, p1

    .line 28
    check-cast v1, LY5/p;

    .line 29
    .line 30
    invoke-virtual {v1}, LY5/p;->a()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_0

    .line 35
    :pswitch_1
    move-object v1, p1

    .line 36
    check-cast v1, LY5/n;

    .line 37
    .line 38
    invoke-virtual {v1}, LY5/n;->z0()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :goto_0
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    packed-switch v2, :pswitch_data_2

    .line 47
    .line 48
    .line 49
    move-object v0, p2

    .line 50
    check-cast v0, LY5/v;

    .line 51
    .line 52
    invoke-virtual {v0}, LY5/v;->y()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    goto :goto_1

    .line 57
    :pswitch_2
    move-object v0, p2

    .line 58
    check-cast v0, LY5/p;

    .line 59
    .line 60
    invoke-virtual {v0}, LY5/p;->a()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    goto :goto_1

    .line 65
    :pswitch_3
    move-object v0, p2

    .line 66
    check-cast v0, LY5/n;

    .line 67
    .line 68
    invoke-virtual {v0}, LY5/n;->z0()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    :goto_1
    sub-int/2addr v1, v0

    .line 73
    if-eqz v1, :cond_0

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    :goto_2
    return v1

    .line 97
    :pswitch_4
    check-cast p1, LY5/p;

    .line 98
    .line 99
    check-cast p2, LY5/p;

    .line 100
    .line 101
    invoke-virtual {p1}, LY5/p;->a()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p2}, LY5/p;->a()I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    sub-int/2addr p1, p2

    .line 110
    return p1

    .line 111
    :pswitch_5
    check-cast p1, Lb5/b;

    .line 112
    .line 113
    check-cast p2, Lb5/b;

    .line 114
    .line 115
    invoke-virtual {p1}, Lb5/b;->a()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    invoke-virtual {p2}, Lb5/b;->a()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-le v0, v1, :cond_1

    .line 124
    .line 125
    const/4 p1, -0x1

    .line 126
    goto :goto_3

    .line 127
    :cond_1
    invoke-virtual {p1}, Lb5/b;->a()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-virtual {p2}, Lb5/b;->a()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    if-ge p1, p2, :cond_2

    .line 136
    .line 137
    const/4 p1, 0x1

    .line 138
    goto :goto_3

    .line 139
    :cond_2
    const/4 p1, 0x0

    .line 140
    :goto_3
    return p1

    .line 141
    :pswitch_6
    check-cast p1, Lu/i;

    .line 142
    .line 143
    check-cast p2, Lu/i;

    .line 144
    .line 145
    iget p1, p1, Lu/i;->H:I

    .line 146
    .line 147
    iget p2, p2, Lu/i;->H:I

    .line 148
    .line 149
    sub-int/2addr p1, p2

    .line 150
    return p1

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
