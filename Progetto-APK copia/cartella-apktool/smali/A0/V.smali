.class public final synthetic LA0/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:Lf6/c;

.field public final synthetic H:I

.field public final synthetic I:I


# direct methods
.method public synthetic constructor <init>(Lf6/c;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA0/V;->G:Lf6/c;

    .line 5
    .line 6
    iput p2, p0, LA0/V;->H:I

    .line 7
    .line 8
    iput p3, p0, LA0/V;->I:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, LA0/V;->G:Lf6/c;

    .line 2
    .line 3
    iget-object v0, v0, Lf6/c;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, LA0/Y;

    .line 6
    .line 7
    iget-object v0, v0, LA0/Y;->d:Lm0/u0;

    .line 8
    .line 9
    check-cast v0, LU0/x;

    .line 10
    .line 11
    iget-object v1, v0, LU0/x;->j:Lm0/t;

    .line 12
    .line 13
    invoke-virtual {v1}, Lm0/t;->a()Lm0/s;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p0, LA0/V;->H:I

    .line 18
    .line 19
    iput v2, v1, Lm0/s;->u:I

    .line 20
    .line 21
    iget v2, p0, LA0/V;->I:I

    .line 22
    .line 23
    iput v2, v1, Lm0/s;->v:I

    .line 24
    .line 25
    invoke-virtual {v1}, Lm0/s;->a()Lm0/t;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, v0, LU0/x;->j:Lm0/t;

    .line 30
    .line 31
    invoke-virtual {v0}, LU0/x;->c()V

    .line 32
    .line 33
    .line 34
    return-void
.end method
