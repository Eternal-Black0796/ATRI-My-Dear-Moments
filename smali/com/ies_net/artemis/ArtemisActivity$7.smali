.class Lcom/ies_net/artemis/ArtemisActivity$7;
.super Ljava/lang/Object;
.source "ArtemisActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/ArtemisActivity;->OnPurchaseSucceeded(Lcom/android/billingclient/api/Purchase;ILcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ies_net/artemis/ArtemisActivity;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisActivity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$code"
        }
    .end annotation

    .line 542
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$7;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    iput p2, p0, Lcom/ies_net/artemis/ArtemisActivity$7;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "s"
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase onConsumeResponse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Artemis"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-eqz p2, :cond_0

    .line 550
    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity$7;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    const/16 v0, -0x9

    invoke-static {p2, v0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$500(Lcom/ies_net/artemis/ArtemisActivity;ILcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 553
    :cond_0
    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity$7;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    iget v0, p0, Lcom/ies_net/artemis/ArtemisActivity$7;->val$code:I

    invoke-static {p2, v0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$500(Lcom/ies_net/artemis/ArtemisActivity;ILcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
