.class public final Lz/a;
.super Lz/c;
.source "SourceFile"


# instance fields
.field public N:I

.field public O:I

.field public P:Lw/a;


# virtual methods
.method public getAllowsGoneWidget()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lz/a;->P:Lw/a;

    .line 2
    .line 3
    iget-boolean v0, v0, Lw/a;->s0:Z

    .line 4
    .line 5
    return v0
.end method

.method public getMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Lz/a;->P:Lw/a;

    .line 2
    .line 3
    iget v0, v0, Lw/a;->t0:I

    .line 4
    .line 5
    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lz/a;->N:I

    .line 2
    .line 3
    return v0
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz/a;->P:Lw/a;

    .line 2
    .line 3
    iput-boolean p1, v0, Lw/a;->s0:Z

    .line 4
    .line 5
    return-void
.end method

.method public setDpMargin(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    int-to-float p1, p1

    .line 12
    mul-float p1, p1, v0

    .line 13
    .line 14
    const/high16 v0, 0x3f000000    # 0.5f

    .line 15
    .line 16
    add-float/2addr p1, v0

    .line 17
    float-to-int p1, p1

    .line 18
    iget-object v0, p0, Lz/a;->P:Lw/a;

    .line 19
    .line 20
    iput p1, v0, Lw/a;->t0:I

    .line 21
    .line 22
    return-void
.end method

.method public setMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz/a;->P:Lw/a;

    .line 2
    .line 3
    iput p1, v0, Lw/a;->t0:I

    .line 4
    .line 5
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lz/a;->N:I

    .line 2
    .line 3
    return-void
.end method
