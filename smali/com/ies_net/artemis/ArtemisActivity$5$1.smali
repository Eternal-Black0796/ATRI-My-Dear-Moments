.class Lcom/ies_net/artemis/ArtemisActivity$5$1;
.super Ljava/lang/Object;
.source "ArtemisActivity.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ies_net/artemis/ArtemisActivity$5;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ies_net/artemis/ArtemisActivity$5;


# direct methods
.method constructor <init>(Lcom/ies_net/artemis/ArtemisActivity$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 322
    iput-object p1, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase onSkuDetailsResponse "

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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Artemis"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object p2, p2, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    const/4 v0, -0x2

    invoke-static {p2, v0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$500(Lcom/ies_net/artemis/ArtemisActivity;ILcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 333
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/SkuDetails;

    invoke-virtual {v3}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object v4, v4, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v4}, Lcom/ies_net/artemis/ArtemisActivity;->access$600(Lcom/ies_net/artemis/ArtemisActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_0

    .line 340
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 342
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object v0, v0, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ies_net/artemis/ArtemisActivity;->access$702(Lcom/ies_net/artemis/ArtemisActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object v0, v0, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ies_net/artemis/ArtemisActivity;->access$802(Lcom/ies_net/artemis/ArtemisActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object v0, v0, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-virtual {p2}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ies_net/artemis/ArtemisActivity;->access$902(Lcom/ies_net/artemis/ArtemisActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object v0, v0, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$1000(Lcom/ies_net/artemis/ArtemisActivity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    const-string v3, "inapp"

    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchases(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$PurchasesResult;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    if-eqz v3, :cond_2

    .line 350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase queryPurchases "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getBillingResult()Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object p2, p2, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    const/4 v0, -0x4

    invoke-static {p2, v0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$500(Lcom/ies_net/artemis/ArtemisActivity;ILcom/android/billingclient/api/BillingResult;)V

    return-void

    :cond_2
    const/4 v3, 0x0

    .line 357
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase$PurchasesResult;->getPurchasesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/Purchase;

    .line 359
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getSku()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object v6, v6, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v6}, Lcom/ies_net/artemis/ArtemisActivity;->access$600(Lcom/ies_net/artemis/ArtemisActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v3, v4

    :cond_4
    if-eqz v3, :cond_5

    .line 365
    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 367
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Purchase purchased "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v3}, Lcom/android/billingclient/api/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object p2, p2, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    const/4 v0, 0x2

    invoke-virtual {p2, v3, v0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->OnPurchaseSucceeded(Lcom/android/billingclient/api/Purchase;ILcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 372
    :cond_5
    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object v0, v0, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$1100(Lcom/ies_net/artemis/ArtemisActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 374
    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object p2, p2, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    const/4 v0, 0x3

    invoke-static {p2, v0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$500(Lcom/ies_net/artemis/ArtemisActivity;ILcom/android/billingclient/api/BillingResult;)V

    return-void

    .line 377
    :cond_6
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    .line 379
    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object p2, p2, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {p2}, Lcom/ies_net/artemis/ArtemisActivity;->access$1000(Lcom/ies_net/artemis/ArtemisActivity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p2

    iget-object v0, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object v0, v0, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    invoke-static {v0}, Lcom/ies_net/artemis/ArtemisActivity;->access$300(Lcom/ies_net/artemis/ArtemisActivity;)Lcom/ies_net/artemis/ArtemisActivity;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 381
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Purchase launchBillingFlow "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    if-eqz p2, :cond_7

    .line 385
    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object p2, p2, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    const/4 v0, -0x5

    invoke-static {p2, v0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$500(Lcom/ies_net/artemis/ArtemisActivity;ILcom/android/billingclient/api/BillingResult;)V

    :cond_7
    return-void

    :cond_8
    :goto_0
    const-string p2, "Purchase onSkuDetailsResponse invalid list."

    .line 335
    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object p2, p0, Lcom/ies_net/artemis/ArtemisActivity$5$1;->this$1:Lcom/ies_net/artemis/ArtemisActivity$5;

    iget-object p2, p2, Lcom/ies_net/artemis/ArtemisActivity$5;->this$0:Lcom/ies_net/artemis/ArtemisActivity;

    const/4 v0, -0x3

    invoke-static {p2, v0, p1}, Lcom/ies_net/artemis/ArtemisActivity;->access$500(Lcom/ies_net/artemis/ArtemisActivity;ILcom/android/billingclient/api/BillingResult;)V

    return-void
.end method
