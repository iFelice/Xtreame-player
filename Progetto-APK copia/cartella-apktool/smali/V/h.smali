.class public final LV/h;
.super LU4/b;
.source "SourceFile"


# instance fields
.field public final G:LV/g;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    invoke-direct {p0, v0}, LU4/b;-><init>(I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, LV/g;

    .line 7
    .line 8
    invoke-direct {v0, p1}, LV/g;-><init>(Landroid/widget/TextView;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LV/h;->G:LV/g;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final W([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    .line 1
    sget-object v0, LU/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method public final d0()Z
    .locals 1

    .line 1
    iget-object v0, p0, LV/h;->G:LV/g;

    .line 2
    .line 3
    iget-boolean v0, v0, LV/g;->I:Z

    .line 4
    .line 5
    return v0
.end method

.method public final f0(Z)V
    .locals 0

    .line 1
    sget-object p1, LU/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public final g0(Z)V
    .locals 1

    .line 1
    sget-object v0, LU/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, LV/h;->G:LV/g;

    .line 4
    .line 5
    iput-boolean p1, v0, LV/g;->I:Z

    .line 6
    .line 7
    return-void
.end method

.method public final j0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    .line 1
    sget-object v0, LU/a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method
