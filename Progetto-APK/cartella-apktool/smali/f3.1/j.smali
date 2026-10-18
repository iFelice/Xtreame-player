.class public final Lf3/j;
.super LB0/w0;
.source "SourceFile"


# instance fields
.field public final L:Lf3/p;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;LB0/w0;Lf3/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, LB0/w0;-><init>(ILjava/lang/String;Ljava/lang/String;LB0/w0;)V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lf3/j;->L:Lf3/p;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final k()Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-super {p0}, LB0/w0;->k()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Response Info"

    .line 6
    .line 7
    iget-object v2, p0, Lf3/j;->L:Lf3/p;

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string v2, "null"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v2}, Lf3/p;->a()Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    :goto_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lf3/j;->k()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    const-string v0, "Error forming toString output."

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method
