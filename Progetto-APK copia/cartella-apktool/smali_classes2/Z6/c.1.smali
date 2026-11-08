.class public final LZ6/c;
.super LZ6/g;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, LZ6/c;->b:I

    .line 2
    .line 3
    invoke-direct {p0, p1}, LZ6/g;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final c(LZ6/m;I)I
    .locals 3

    .line 1
    iget v0, p0, LZ6/c;->b:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/16 p1, 0xc

    .line 9
    .line 10
    if-ne p2, p1, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    :cond_0
    return p2

    .line 14
    :pswitch_0
    const/16 p1, 0x18

    .line 15
    .line 16
    if-ne p2, p1, :cond_1

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    :cond_1
    return p2

    .line 20
    :pswitch_1
    const/4 p1, 0x7

    .line 21
    if-ne p2, p1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    add-int/2addr v1, p2

    .line 25
    :goto_0
    return v1

    .line 26
    :pswitch_2
    sub-int/2addr p2, v1

    .line 27
    return p2

    .line 28
    :pswitch_3
    const/16 v0, 0x64

    .line 29
    .line 30
    if-ge p2, v0, :cond_4

    .line 31
    .line 32
    iget v0, p1, LZ6/m;->J:I

    .line 33
    .line 34
    add-int/2addr v0, p2

    .line 35
    iget p1, p1, LZ6/m;->K:I

    .line 36
    .line 37
    if-lt p2, p1, :cond_3

    .line 38
    .line 39
    :goto_1
    move p2, v0

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    add-int/lit8 v0, v0, 0x64

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_4
    :goto_2
    return p2

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
