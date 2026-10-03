.class public final LZ6/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ6/q;


# instance fields
.field public final synthetic a:I

.field public final b:LZ6/q;


# direct methods
.method public synthetic constructor <init>(LZ6/q;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LZ6/o;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LZ6/o;->b:LZ6/q;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;Ljava/util/Calendar;)V
    .locals 4

    .line 1
    iget v0, p0, LZ6/o;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, LZ6/o;->b:LZ6/q;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, LD0/y;->c(Ljava/util/Calendar;)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-interface {v2, p1, p2}, LZ6/q;->c(Ljava/lang/Appendable;I)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_0
    const/16 v0, 0xb

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->getMaximum(I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    add-int/lit8 v3, p2, 0x1

    .line 30
    .line 31
    :cond_0
    invoke-interface {v2, p1, v3}, LZ6/q;->c(Ljava/lang/Appendable;I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    const/16 v0, 0xa

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->getLeastMaximum(I)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    add-int/lit8 v3, p2, 0x1

    .line 48
    .line 49
    :cond_1
    invoke-interface {v2, p1, v3}, LZ6/q;->c(Ljava/lang/Appendable;I)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_2
    const/4 v0, 0x7

    .line 54
    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-ne p2, v1, :cond_2

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    add-int/lit8 v0, p2, -0x1

    .line 62
    .line 63
    :goto_0
    invoke-interface {v2, p1, v0}, LZ6/q;->c(Ljava/lang/Appendable;I)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()I
    .locals 2

    .line 1
    iget v0, p0, LZ6/o;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LZ6/o;->b:LZ6/q;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1}, LZ6/s;->b()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    invoke-interface {v1}, LZ6/s;->b()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :pswitch_1
    invoke-interface {v1}, LZ6/s;->b()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :pswitch_2
    invoke-interface {v1}, LZ6/s;->b()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Appendable;I)V
    .locals 2

    .line 1
    iget v0, p0, LZ6/o;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LZ6/o;->b:LZ6/q;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {v1, p1, p2}, LZ6/q;->c(Ljava/lang/Appendable;I)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-interface {v1, p1, p2}, LZ6/q;->c(Ljava/lang/Appendable;I)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    invoke-interface {v1, p1, p2}, LZ6/q;->c(Ljava/lang/Appendable;I)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_2
    invoke-interface {v1, p1, p2}, LZ6/q;->c(Ljava/lang/Appendable;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
