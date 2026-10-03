.class public final LO5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO5/f;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LO5/e;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LO5/e;->b:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget v0, p0, LO5/e;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LO5/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    check-cast v1, LO5/k;

    .line 10
    .line 11
    iget-boolean v0, v1, LO5/k;->k:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string v0, "k"

    .line 16
    .line 17
    const-string v2, "Camera closed; finishing activity"

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object v0, v1, LO5/k;->a:Landroid/app/Activity;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :pswitch_1
    check-cast v1, LO5/g;

    .line 29
    .line 30
    iget-object v0, v1, LO5/g;->P:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, LO5/f;

    .line 47
    .line 48
    check-cast v1, LO5/e;

    .line 49
    .line 50
    invoke-virtual {v1}, LO5/e;->a()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget v0, p0, LO5/e;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LO5/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :pswitch_0
    check-cast v1, LO5/k;

    .line 10
    .line 11
    iget-object p1, v1, LO5/k;->a:Landroid/app/Activity;

    .line 12
    .line 13
    const v0, 0x7f13024c

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v1, p1}, LO5/k;->b(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast v1, LO5/g;

    .line 25
    .line 26
    iget-object v0, v1, LO5/g;->P:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, LO5/f;

    .line 43
    .line 44
    check-cast v1, LO5/e;

    .line 45
    .line 46
    invoke-virtual {v1, p1}, LO5/e;->b(Ljava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, LO5/e;->a:I

    .line 2
    .line 3
    iget-object v1, p0, LO5/e;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 9
    .line 10
    iget-object v0, v1, Lcom/journeyapps/barcodescanner/ViewfinderView;->O:LO5/g;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0}, LO5/g;->getFramingRect()Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v2, v1, Lcom/journeyapps/barcodescanner/ViewfinderView;->O:LO5/g;

    .line 20
    .line 21
    invoke-virtual {v2}, LO5/g;->getPreviewSize()LO5/t;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    iput-object v0, v1, Lcom/journeyapps/barcodescanner/ViewfinderView;->P:Landroid/graphics/Rect;

    .line 30
    .line 31
    iput-object v2, v1, Lcom/journeyapps/barcodescanner/ViewfinderView;->Q:LO5/t;

    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 34
    .line 35
    .line 36
    :pswitch_0
    return-void

    .line 37
    :pswitch_1
    check-cast v1, LO5/g;

    .line 38
    .line 39
    iget-object v0, v1, LO5/g;->P:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, LO5/f;

    .line 56
    .line 57
    check-cast v1, LO5/e;

    .line 58
    .line 59
    invoke-virtual {v1}, LO5/e;->c()V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    return-void

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 2

    .line 1
    iget v0, p0, LO5/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, LO5/e;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, LO5/g;

    .line 10
    .line 11
    iget-object v0, v0, LO5/g;->P:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, LO5/f;

    .line 28
    .line 29
    check-cast v1, LO5/e;

    .line 30
    .line 31
    invoke-virtual {v1}, LO5/e;->d()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()V
    .locals 2

    .line 1
    iget v0, p0, LO5/e;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object v0, p0, LO5/e;->b:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, LO5/g;

    .line 10
    .line 11
    iget-object v0, v0, LO5/g;->P:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, LO5/f;

    .line 28
    .line 29
    check-cast v1, LO5/e;

    .line 30
    .line 31
    invoke-virtual {v1}, LO5/e;->e()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
